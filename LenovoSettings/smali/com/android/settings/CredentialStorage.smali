.class public final Lcom/flyme/deviceoriginalsettings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;,
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;,
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;,
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL:Ljava/lang/String; = "com.android.credentials.INSTALL"

.field public static final ACTION_RESET:Ljava/lang/String; = "com.android.credentials.RESET"

.field public static final ACTION_UNLOCK:Ljava/lang/String; = "com.android.credentials.UNLOCK"

.field private static final CONFIRM_KEY_GUARD_REQUEST:I = 0x1

.field static final MIN_PASSWORD_QUALITY:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "CredentialStorage"

.field private static sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

.field private static sResetDialog:Landroid/app/AlertDialog;

.field private static sUnlockDialog:Landroid/app/AlertDialog;


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    sput-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    .line 113
    sput-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    .line 114
    sput-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 123
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I

    .line 545
    return-void
.end method

.method static synthetic access$1000(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method static synthetic access$300()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    sput-object p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$500(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$600()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    sput-object p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$700(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 103
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$702(Lcom/flyme/deviceoriginalsettings/CredentialStorage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;
    .param p1, "x1"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$800()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$802(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/AlertDialog;

    .prologue
    .line 103
    sput-object p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$900(Lcom/flyme/deviceoriginalsettings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/CredentialStorage;

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method private checkKeyGuardQuality()Z
    .locals 2

    .prologue
    .line 251
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v0

    .line 252
    .local v0, "quality":I
    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private confirmKeyGuard()Z
    .locals 6

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 510
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v2, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;

    invoke-direct {v2, p0}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    const/4 v3, 0x1

    const v4, 0x7f0a0af4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x7f0a0af5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/flyme/deviceoriginalsettings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 514
    .local v0, "launched":Z
    return v0
.end method

.method private ensureKeyGuard()V
    .locals 2

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    new-instance v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->confirmKeyGuard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method private handleUnlockOrInstall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 198
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 202
    :cond_0
    const-string v0, "CredentialStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const-string v1, "CredentialStorage"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeyGuardQuality "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 207
    :pswitch_0
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 203
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 211
    :pswitch_1
    new-instance v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;

    invoke-direct {v0, p0, v3}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$UnlockDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V

    goto :goto_0

    .line 215
    :pswitch_2
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_2

    .line 216
    new-instance v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;

    invoke-direct {v0, p0, v3}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ConfigureKeyGuardDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->installIfAvailable()V

    .line 220
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 14

    .prologue
    const/16 v13, 0x3f2

    const/4 v12, -0x1

    const/4 v9, 0x1

    .line 273
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v10}, Landroid/os/Bundle;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 274
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 275
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 277
    const-string v10, "install_as_uid"

    invoke-virtual {v0, v10, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 279
    .local v7, "uid":I
    const-string v10, "user_private_key_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 280
    const-string v10, "user_private_key_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "key":Ljava/lang/String;
    const-string v10, "user_private_key_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v8

    .line 283
    .local v8, "value":[B
    const/4 v5, 0x1

    .line 284
    .local v5, "flags":I
    if-ne v7, v13, :cond_0

    invoke-direct {p0, v8}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 287
    const-string v10, "CredentialStorage"

    const-string v11, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v5, 0x0

    .line 291
    :cond_0
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v6, v8, v7, v5}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v10

    if-nez v10, :cond_2

    .line 292
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v5    # "flags":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "value":[B
    :cond_1
    :goto_0
    return-void

    .line 297
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "uid":I
    :cond_2
    if-ne v7, v13, :cond_3

    const/4 v5, 0x0

    .line 299
    .restart local v5    # "flags":I
    :goto_1
    const-string v10, "user_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 300
    const-string v10, "user_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, "certName":Ljava/lang/String;
    const-string v10, "user_certificate_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 303
    .local v3, "certData":[B
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v4, v3, v7, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    if-nez v10, :cond_4

    .line 304
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "certData":[B
    .end local v4    # "certName":Ljava/lang/String;
    .end local v5    # "flags":I
    :cond_3
    move v5, v9

    .line 297
    goto :goto_1

    .line 309
    .restart local v5    # "flags":I
    :cond_4
    const-string v10, "ca_certificates_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 310
    const-string v10, "ca_certificates_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 311
    .local v2, "caListName":Ljava/lang/String;
    const-string v10, "ca_certificates_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 313
    .local v1, "caListData":[B
    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v2, v1, v7, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    if-nez v10, :cond_5

    .line 314
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 320
    .end local v1    # "caListData":[B
    .end local v2    # "caListName":Ljava/lang/String;
    :cond_5
    const-string v10, "wapi_user_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 321
    const-string v10, "wapi_user_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 322
    .restart local v2    # "caListName":Ljava/lang/String;
    const-string v10, "wapi_user_certificate_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 323
    .restart local v1    # "caListData":[B
    if-eqz v2, :cond_6

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v2, v1, v7, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v10

    if-nez v10, :cond_6

    .line 324
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 329
    .end local v1    # "caListData":[B
    .end local v2    # "caListName":Ljava/lang/String;
    :cond_6
    const-string v10, "wapi_server_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 330
    const-string v10, "wapi_server_certificate_name"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .restart local v2    # "caListName":Ljava/lang/String;
    const-string v10, "wapi_server_certificate_data"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 334
    .restart local v1    # "caListData":[B
    if-eqz v2, :cond_7

    iget-object v10, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v10, v2, v1, v7, v9}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v9

    if-nez v9, :cond_7

    .line 335
    const-string v9, "CredentialStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to install "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " as user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 341
    .end local v1    # "caListData":[B
    .end local v2    # "caListName":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, v12}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->setResult(I)V

    goto/16 :goto_0
.end method

.method private isHardwareBackedKey([B)Z
    .locals 7
    .param p1, "keyData"    # [B

    .prologue
    .line 257
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 258
    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 259
    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "algId":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "algName":Ljava/lang/String;
    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 265
    .end local v0    # "algId":Ljava/lang/String;
    .end local v1    # "algName":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :goto_0
    return v5

    .line 263
    :catch_0
    move-exception v3

    .line 264
    .local v3, "e":Ljava/io/IOException;
    const-string v5, "CredentialStorage"

    const-string v6, "Failed to parse key data"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 519
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 524
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 525
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 526
    const-string v1, "password"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 537
    .end local v0    # "password":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 535
    :cond_1
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 141
    const-string v0, "CredentialStorage"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sput-object v2, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    .line 143
    sput-object v2, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    .line 144
    sput-object v2, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    .line 147
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "com.android.credentials.UNLOCK"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-ne v0, v1, :cond_0

    .line 150
    const-string v0, "CredentialStorage"

    const-string v1, "Finish CredentialStorage when recreate by system"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->finish()V

    .line 154
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 178
    const-string v0, "CredentialStorage"

    const-string v1, "onDestroy, set sConfigureKeyGuardDialog as null"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 180
    sput-object v2, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sConfigureKeyGuardDialog:Landroid/app/AlertDialog;

    .line 182
    :cond_0
    sget-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 183
    sput-object v2, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sResetDialog:Landroid/app/AlertDialog;

    .line 185
    :cond_1
    sget-object v0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 186
    sput-object v2, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->sUnlockDialog:Landroid/app/AlertDialog;

    .line 188
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 189
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 159
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 160
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "action":Ljava/lang/String;
    const-string v2, "CredentialStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v2, "com.android.credentials.RESET"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v2, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/flyme/deviceoriginalsettings/CredentialStorage$ResetDialog;-><init>(Lcom/flyme/deviceoriginalsettings/CredentialStorage;Lcom/flyme/deviceoriginalsettings/CredentialStorage$1;)V

    .line 173
    :goto_0
    return-void

    .line 166
    :cond_0
    const-string v2, "com.android.credentials.INSTALL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0
.end method
