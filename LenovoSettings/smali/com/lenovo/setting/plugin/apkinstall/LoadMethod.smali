.class public Lcom/lenovo/setting/plugin/apkinstall/LoadMethod;
.super Ljava/lang/Object;
.source "LoadMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Load(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p0, "invokeObj"    # Ljava/lang/Object;
    .param p1, "cName"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "types"    # [Ljava/lang/String;
    .param p4, "params"    # [Ljava/lang/String;

    .prologue
    .line 63
    const/4 v5, 0x0

    .line 65
    .local v5, "retObject":Ljava/lang/Object;
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, "cls":Ljava/lang/Class;
    const/4 v3, 0x0

    .line 68
    .local v3, "meth":Ljava/lang/reflect/Method;
    if-nez p0, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .line 72
    :cond_0
    if-eqz p3, :cond_1

    .line 73
    invoke-static {p3}, Lcom/lenovo/setting/plugin/apkinstall/LoadMethod;->getMethodTypesClass([Ljava/lang/String;)[Ljava/lang/Class;

    move-result-object v4

    .line 74
    .local v4, "paramTypes":[Ljava/lang/Class;
    invoke-virtual {v1, p2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 78
    .end local v4    # "paramTypes":[Ljava/lang/Class;
    :goto_0
    invoke-static {p3, p4}, Lcom/lenovo/setting/plugin/apkinstall/LoadMethod;->getMethodParamObject([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 79
    .local v0, "argList":[Ljava/lang/Object;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 80
    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 88
    .end local v0    # "argList":[Ljava/lang/Object;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "meth":Ljava/lang/reflect/Method;
    .end local v5    # "retObject":Ljava/lang/Object;
    :goto_1
    return-object v5

    .line 76
    .restart local v1    # "cls":Ljava/lang/Class;
    .restart local v3    # "meth":Ljava/lang/reflect/Method;
    .restart local v5    # "retObject":Ljava/lang/Object;
    :cond_1
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, p2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    goto :goto_0

    .line 83
    .restart local v0    # "argList":[Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 85
    .end local v0    # "argList":[Ljava/lang/Object;
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v3    # "meth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static getMethodParamObject([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 4
    .param p0, "types"    # [Ljava/lang/String;
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 154
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 155
    :cond_0
    const/4 v1, 0x0

    .line 179
    :cond_1
    return-object v1

    .line 158
    :cond_2
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/Object;

    .line 159
    .local v1, "retObjects":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 160
    aget-object v2, p1, v0

    if-eqz v2, :cond_4

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 161
    aget-object v2, p0, v0

    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    aget-object v2, p0, v0

    const-string v3, "Integer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    :cond_3
    new-instance v2, Ljava/lang/Integer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 159
    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :cond_5
    aget-object v2, p0, v0

    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    aget-object v2, p0, v0

    const-string v3, "Float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 165
    :cond_6
    new-instance v2, Ljava/lang/Float;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 167
    :cond_7
    aget-object v2, p0, v0

    const-string v3, "double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    aget-object v2, p0, v0

    const-string v3, "Double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 168
    :cond_8
    new-instance v2, Ljava/lang/Double;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    goto :goto_1

    .line 170
    :cond_9
    aget-object v2, p0, v0

    const-string v3, "boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    aget-object v2, p0, v0

    const-string v3, "Boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 172
    :cond_a
    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    .line 175
    :cond_b
    aget-object v2, p1, v0

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public static getMethodTypesClass([Ljava/lang/String;)[Ljava/lang/Class;
    .locals 4
    .param p0, "types"    # [Ljava/lang/String;

    .prologue
    .line 126
    if-nez p0, :cond_1

    .line 127
    const/4 v0, 0x0

    .line 150
    :cond_0
    return-object v0

    .line 130
    :cond_1
    array-length v2, p0

    new-array v0, v2, [Ljava/lang/Class;

    .line 131
    .local v0, "cs":[Ljava/lang/Class;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 132
    aget-object v2, p0, v1

    if-eqz v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    aget-object v2, p0, v1

    const-string v3, "int"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p0, v1

    const-string v3, "Integer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 134
    :cond_2
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    .line 131
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_4
    aget-object v2, p0, v1

    const-string v3, "float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    aget-object v2, p0, v1

    const-string v3, "Float"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    :cond_5
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    goto :goto_1

    .line 139
    :cond_6
    aget-object v2, p0, v1

    const-string v3, "double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    aget-object v2, p0, v1

    const-string v3, "Double"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 140
    :cond_7
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    goto :goto_1

    .line 142
    :cond_8
    aget-object v2, p0, v1

    const-string v3, "boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    aget-object v2, p0, v1

    const-string v3, "Boolean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 143
    :cond_9
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    goto :goto_1

    .line 146
    :cond_a
    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    goto :goto_1
.end method

.method public static getObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p0, "invokeObj"    # Ljava/lang/Object;
    .param p1, "cName"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 105
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 106
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 107
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 110
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 110
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getStaticBoolProperty(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 197
    invoke-static {p0, p1}, Lcom/lenovo/setting/plugin/apkinstall/LoadMethod;->getStaticProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 199
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 200
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 202
    .end local p2    # "defaultValue":Z
    :cond_0
    return p2
.end method

.method public static getStaticIntProperty(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 206
    invoke-static {p0, p1}, Lcom/lenovo/setting/plugin/apkinstall/LoadMethod;->getStaticProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 209
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 211
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public static getStaticLongProperty(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 215
    invoke-static {p0, p1}, Lcom/lenovo/setting/plugin/apkinstall/LoadMethod;->getStaticProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 217
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 218
    check-cast v0, Ljava/lang/Long;

    .end local v0    # "obj":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 220
    .end local p2    # "defaultValue":J
    :cond_0
    return-wide p2
.end method

.method public static getStaticProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 184
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 185
    .local v2, "ownerClass":Ljava/lang/Class;
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 186
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 192
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "ownerClass":Ljava/lang/Class;
    :goto_0
    return-object v3

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 192
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getStaticStringProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-static {p0, p1}, Lcom/lenovo/setting/plugin/apkinstall/LoadMethod;->getStaticProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "obj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 227
    check-cast v0, Ljava/lang/String;

    .line 229
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method public static isClassExisted(Ljava/lang/String;)Z
    .locals 5
    .param p0, "cName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 15
    const/4 v0, 0x0

    .line 17
    .local v0, "cls":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 25
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 18
    :catch_0
    move-exception v1

    .line 19
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    if-nez v0, :cond_0

    move v2, v3

    .line 25
    goto :goto_0

    .line 22
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-nez v0, :cond_0

    move v2, v3

    .line 25
    goto :goto_0
.end method

.method public static isFieldExisted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "cName"    # Ljava/lang/String;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 42
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 43
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v2, 0x1

    .line 47
    .end local v0    # "cls":Ljava/lang/Class;
    :goto_0
    return v2

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 47
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMethodExisted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "cName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 31
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    .local v0, "cls":Ljava/lang/Class;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 v2, 0x1

    .line 36
    .end local v0    # "cls":Ljava/lang/Class;
    :goto_0
    return v2

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static varargs isMethodExisted(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z
    .locals 3
    .param p0, "cName"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameterTypes"    # [Ljava/lang/Class;

    .prologue
    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const/4 v2, 0x1

    .line 58
    .end local v0    # "cls":Ljava/lang/Class;
    :goto_0
    return v2

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 58
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setBooleanValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p0, "invokeObj"    # Ljava/lang/Object;
    .param p1, "cName"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 93
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 94
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 95
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 96
    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setObjectValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "invokeObj"    # Ljava/lang/Object;
    .param p1, "cName"    # Ljava/lang/String;
    .param p2, "fieldName"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 116
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 117
    .local v0, "cls":Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 118
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    invoke-virtual {v2, p0, p3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .end local v0    # "cls":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_0
.end method
