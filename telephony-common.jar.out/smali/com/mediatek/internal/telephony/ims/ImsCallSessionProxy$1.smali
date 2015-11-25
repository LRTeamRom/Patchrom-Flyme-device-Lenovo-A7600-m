.class Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsCallSessionProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;


# direct methods
.method constructor <init>(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleImsConfCallMessage(IILjava/lang/String;)V
    .locals 17
    .param p1, "len"    # I
    .param p2, "callId"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 287
    :try_start_0
    const-string v4, "/sdcard/conferenceCall.xml"

    .line 289
    .local v4, "file":Ljava/lang/String;
    new-instance v9, Ljava/io/OutputStreamWriter;

    new-instance v14, Ljava/io/FileOutputStream;

    invoke-direct {v14, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const-string v15, "UTF-8"

    invoke-direct {v9, v14, v15}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 290
    .local v9, "out":Ljava/io/OutputStreamWriter;
    const/4 v14, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v14, v15}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 291
    invoke-virtual {v9}, Ljava/io/OutputStreamWriter;->close()V

    .line 293
    const-string v14, "ImsCallSessionProxy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleVoLteConfCallMessage, callId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v8, Ljava/io/BufferedInputStream;

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 297
    .local v8, "inStream":Ljava/io/InputStream;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 298
    .local v3, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v10

    .line 299
    .local v10, "saxParse":Ljavax/xml/parsers/SAXParser;
    new-instance v13, Lcom/android/internal/telephony/ConferenceCallXml;

    invoke-direct {v13}, Lcom/android/internal/telephony/ConferenceCallXml;-><init>()V

    .line 300
    .local v13, "xmlData":Lcom/android/internal/telephony/ConferenceCallXml;
    invoke-virtual {v10, v8, v13}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 303
    invoke-virtual {v13}, Lcom/android/internal/telephony/ConferenceCallXml;->getUsers()Ljava/util/List;

    move-result-object v12

    .line 304
    .local v12, "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/ConferenceCallXml$User;>;"
    const/4 v5, 0x0

    .line 305
    .local v5, "i":I
    new-instance v7, Lcom/android/ims/ImsConferenceState;

    invoke-direct {v7}, Lcom/android/ims/ImsConferenceState;-><init>()V

    .line 307
    .local v7, "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/ConferenceCallXml$User;

    .line 308
    .local v11, "u":Lcom/android/internal/telephony/ConferenceCallXml$User;
    add-int/lit8 v5, v5, 0x1

    .line 309
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 310
    .local v1, "confInfo":Landroid/os/Bundle;
    const-string v14, "user"

    invoke-virtual {v11}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getEntity()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v14, "display-text"

    invoke-virtual {v11}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getDisplayText()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v11}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getStatus()Ljava/lang/String;

    move-result-object v14

    const-string v15, "disconnected"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 313
    const-string v14, "status"

    const-string v15, "disconnected"

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_1
    iget-object v14, v7, Lcom/android/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v1    # "confInfo":Landroid/os/Bundle;
    .end local v3    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v4    # "file":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    .end local v8    # "inStream":Ljava/io/InputStream;
    .end local v9    # "out":Ljava/io/OutputStreamWriter;
    .end local v10    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .end local v11    # "u":Lcom/android/internal/telephony/ConferenceCallXml$User;
    .end local v12    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/ConferenceCallXml$User;>;"
    .end local v13    # "xmlData":Lcom/android/internal/telephony/ConferenceCallXml;
    :catch_0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/lang/Exception;
    const-string v14, "ImsCallSessionProxy"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to handle volte conference call message !!!"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-void

    .line 314
    .restart local v1    # "confInfo":Landroid/os/Bundle;
    .restart local v3    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .restart local v4    # "file":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "imsConferenceState":Lcom/android/ims/ImsConferenceState;
    .restart local v8    # "inStream":Ljava/io/InputStream;
    .restart local v9    # "out":Ljava/io/OutputStreamWriter;
    .restart local v10    # "saxParse":Ljavax/xml/parsers/SAXParser;
    .restart local v11    # "u":Lcom/android/internal/telephony/ConferenceCallXml$User;
    .restart local v12    # "users":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/ConferenceCallXml$User;>;"
    .restart local v13    # "xmlData":Lcom/android/internal/telephony/ConferenceCallXml;
    :cond_1
    :try_start_1
    invoke-virtual {v11}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getStatus()Ljava/lang/String;

    move-result-object v14

    const-string v15, "connected"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 315
    const-string v14, "status"

    const-string v15, "connected"

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_2
    invoke-virtual {v11}, Lcom/android/internal/telephony/ConferenceCallXml$User;->getStatus()Ljava/lang/String;

    move-result-object v14

    const-string v15, "on-hold"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 317
    const-string v14, "status"

    const-string v15, "on-hold"

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 319
    :cond_3
    const-string v14, "status"

    const-string v15, "connect-fail"

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 325
    .end local v1    # "confInfo":Landroid/os/Bundle;
    .end local v11    # "u":Lcom/android/internal/telephony/ConferenceCallXml$User;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    if-eqz v14, :cond_0

    .line 327
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mListener:Lcom/android/ims/internal/IImsCallSessionListener;
    invoke-static {v14}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$100(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Lcom/android/ims/internal/IImsCallSessionListener;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    invoke-interface {v14, v15, v7}, Lcom/android/ims/internal/IImsCallSessionListener;->callSessionConferenceStateUpdated(Lcom/android/ims/internal/IImsCallSession;Lcom/android/ims/ImsConferenceState;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 328
    :catch_1
    move-exception v2

    .line 329
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v14, "ImsCallSessionProxy"

    const-string v15, "RemoteException occurs when callSessionConferenceStateUpdated()"

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 340
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, "action":Ljava/lang/String;
    const-string v3, "ImsCallSessionProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "received broadcast "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v3, "android.intent.action.ims.conference"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    const-string v3, "call.id"

    const/4 v4, 0x3

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 348
    .local v1, "callId":I
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->this$0:Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;

    # getter for: Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->mCallId:Ljava/lang/String;
    invoke-static {v3}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;->access$200(Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 349
    const-string v3, "message.content"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    .local v2, "data":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v3, v1, v2}, Lcom/mediatek/internal/telephony/ims/ImsCallSessionProxy$1;->handleImsConfCallMessage(IILjava/lang/String;)V

    .line 353
    .end local v1    # "callId":I
    .end local v2    # "data":Ljava/lang/String;
    :cond_0
    return-void
.end method
