.class public Lcom/android/mistyrain/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Brushrecovery(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "mountstr"    # Ljava/lang/String;
    .param p1, "recpath"    # Ljava/lang/String;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dd if="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mistyrain/Shell;->execShell(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static execCommand(Ljava/lang/String;)V
    .registers 10
    .param p0, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 49
    .local v4, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v4, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 51
    .local v3, "proc":Ljava/lang/Process;
    :try_start_8
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    move-result v6

    if-eqz v6, :cond_26

    .line 52
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "exit value = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Process;->exitValue()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    :cond_26
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    .line 55
    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 54
    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 56
    .local v1, "in":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 57
    .local v5, "stringBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 58
    .local v2, "line":Ljava/lang/String;
    :goto_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4d

    .line 61
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_49} :catch_64
    .catchall {:try_start_8 .. :try_end_49} :catchall_70

    .line 67
    :try_start_49
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_77

    .line 71
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "stringBuffer":Ljava/lang/StringBuffer;
    :goto_4c
    return-void

    .line 59
    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_4d
    :try_start_4d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_63
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_63} :catch_64
    .catchall {:try_start_4d .. :try_end_63} :catchall_70

    goto :goto_3a

    .line 63
    .end local v1    # "in":Ljava/io/BufferedReader;
    .end local v2    # "line":Ljava/lang/String;
    .end local v5    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_64
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_65
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_65 .. :try_end_6a} :catchall_70

    .line 67
    :try_start_6a
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_6e

    goto :goto_4c

    .line 68
    :catch_6e
    move-exception v6

    goto :goto_4c

    .line 65
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_70
    move-exception v6

    .line 67
    :try_start_71
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    .line 70
    :goto_74
    throw v6

    .line 68
    :catch_75
    move-exception v7

    goto :goto_74

    .restart local v1    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v5    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_77
    move-exception v6

    goto :goto_4c
.end method

.method public static execShell(Ljava/lang/String;)V
    .registers 7
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 14
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 16
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 17
    .local v1, "outputStream":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 19
    .local v0, "dataOutputStream":Ljava/io/DataOutputStream;
    invoke-virtual {v0, p0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    .line 23
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 24
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1f} :catch_20

    .line 32
    .end local v0    # "dataOutputStream":Ljava/io/DataOutputStream;
    .end local v1    # "outputStream":Ljava/io/OutputStream;
    .end local v2    # "p":Ljava/lang/Process;
    :goto_1f
    return-void

    .line 26
    :catch_20
    move-exception v3

    .line 28
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1f
.end method

.method public static getRootOutputStream()Ljava/io/DataOutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "su"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 41
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 42
    .local v1, "outputStream":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    .local v0, "dataOutputStream":Ljava/io/DataOutputStream;
    return-object v0
.end method
