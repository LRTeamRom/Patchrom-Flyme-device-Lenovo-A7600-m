.class Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;
.super Landroid/app/AlertDialog;
.source "VpnDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private mCreate:Z

.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mIpsecCaCert:Landroid/widget/Spinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Landroid/widget/Spinner;

.field private mIpsecUserCert:Landroid/widget/Spinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p4, "editing"    # Z

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mCreate:Z

    .line 75
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 76
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 77
    iput-boolean p4, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mEditing:Z

    .line 78
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "profile"    # Lcom/android/internal/net/VpnProfile;
    .param p4, "editing"    # Z
    .param p5, "create"    # Z

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mCreate:Z

    .line 84
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 86
    iput-boolean p4, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mEditing:Z

    .line 87
    iput-boolean p5, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mCreate:Z

    .line 88
    return-void
.end method

.method private changeType(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    const v6, 0x7f0e02b1

    const v5, 0x7f0e02ae

    const v4, 0x7f0e02ac

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 245
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0e02b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 252
    packed-switch p1, :pswitch_data_0

    .line 274
    :goto_0
    return-void

    .line 254
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 258
    :pswitch_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 261
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 265
    :pswitch_3
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :pswitch_4
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 271
    :pswitch_5
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0e02b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 252
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 9
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "firstId"    # I
    .param p4, "selected"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 335
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 336
    .local v3, "context":Landroid/content/Context;
    if-nez p3, :cond_2

    const-string v4, ""

    .line 337
    .local v4, "first":Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 339
    .local v2, "certificates":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_3

    .line 340
    :cond_0
    new-array v2, v8, [Ljava/lang/String;

    .end local v2    # "certificates":[Ljava/lang/String;
    aput-object v4, v2, v7

    .line 348
    .restart local v2    # "certificates":[Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v3, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 350
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 351
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 353
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_2
    array-length v6, v2

    if-ge v5, v6, :cond_1

    .line 354
    aget-object v6, v2, v5

    invoke-virtual {v6, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 355
    invoke-virtual {p1, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 359
    :cond_1
    return-void

    .line 336
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v2    # "certificates":[Ljava/lang/String;
    .end local v4    # "first":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v3, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 342
    .restart local v2    # "certificates":[Ljava/lang/String;
    .restart local v4    # "first":Ljava/lang/String;
    :cond_3
    array-length v6, v2

    add-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .line 343
    .local v1, "array":[Ljava/lang/String;
    aput-object v4, v1, v7

    .line 344
    array-length v6, v2

    invoke-static {v2, v7, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    move-object v2, v1

    goto :goto_1

    .line 353
    .end local v1    # "array":[Ljava/lang/String;
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v5    # "i":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private validate(Z)Z
    .locals 4
    .param p1, "editing"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 277
    if-nez p1, :cond_2

    .line 278
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :cond_1
    move v0, v1

    .line 278
    goto :goto_0

    .line 284
    :cond_2
    const-string v2, ""

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 288
    goto :goto_0

    .line 291
    :cond_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 304
    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 11
    .param p1, "addresses"    # Ljava/lang/String;
    .param p2, "cidr"    # Z

    .prologue
    .line 309
    :try_start_0
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v0, v1, v4

    .line 310
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 309
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 314
    :cond_1
    const/16 v8, 0x20

    .line 315
    .local v8, "prefixLength":I
    if-eqz p2, :cond_2

    .line 316
    const-string v9, "/"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v0, v7, v9

    .line 318
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 320
    .end local v7    # "parts":[Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 321
    .local v2, "bytes":[B
    const/4 v9, 0x3

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xff

    const/4 v10, 0x2

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v10, v2, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x18

    or-int v5, v9, v10

    .line 323
    .local v5, "integer":I
    array-length v9, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    if-ltz v8, :cond_3

    const/16 v9, 0x20

    if-gt v8, v9, :cond_3

    const/16 v9, 0x20

    if-ge v8, v9, :cond_0

    shl-int v9, v5, v8

    if-eqz v9, :cond_0

    .line 325
    :cond_3
    const/4 v9, 0x0

    .line 331
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v4    # "i$":I
    .end local v5    # "integer":I
    .end local v6    # "len$":I
    .end local v8    # "prefixLength":I
    :goto_1
    return v9

    .line 328
    :catch_0
    move-exception v3

    .line 329
    .local v3, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 331
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v6    # "len$":I
    :cond_4
    const/4 v9, 0x1

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "field"    # Landroid/text/Editable;

    .prologue
    .line 214
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 219
    return-void
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 2

    .prologue
    .line 367
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "profile":Lcom/android/internal/net/VpnProfile;
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 370
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 371
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 372
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 373
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 375
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 378
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    .line 409
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 410
    return-object v0

    .line 380
    :pswitch_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    goto :goto_0

    .line 384
    :pswitch_1
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 387
    :pswitch_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 388
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    goto :goto_0

    .line 392
    :pswitch_3
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 395
    :pswitch_4
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 400
    :cond_1
    :pswitch_5
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 403
    :cond_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method isEditing()Z
    .locals 1

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mEditing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "showOptions"    # Landroid/view/View;

    .prologue
    .line 227
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v1, 0x7f0e02b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0400ff

    invoke-virtual {v3, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    .line 94
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->setView(Landroid/view/View;)V

    .line 95
    invoke-virtual {p0, v5}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->setInverseBackgroundForced(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 100
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e010e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    .line 101
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02a9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    .line 102
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02aa

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    .line 103
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02bc

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    .line 104
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02bd

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    .line 105
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02b8

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 106
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02b9

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    .line 107
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02ba

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    .line 108
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02ab

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    .line 109
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02ad

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 110
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02af

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 111
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02b0

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 112
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02b2

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    .line 113
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02b4

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    .line 114
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02b5

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    .line 115
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v6, 0x7f0e02be

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    .line 118
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v6, v6, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 120
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v3, v3, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_0
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mMppe:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v6, v6, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 129
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    const-string v6, "USRPKEY_"

    iget-object v7, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v7, v7, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v4, v7}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 134
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v6, "CACERT_"

    const v7, 0x7f0a0bf2

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    const-string v6, "USRCERT_"

    const v7, 0x7f0a0bf3

    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v8, v8, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v3, v6, v7, v8}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v6, v6, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 143
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 146
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 147
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 148
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 152
    invoke-direct {p0, v5}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v2

    .line 153
    .local v2, "valid":Z
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mEditing:Z

    if-nez v3, :cond_1

    if-nez v2, :cond_2

    :cond_1
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mEditing:Z

    .line 155
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v3, :cond_5

    .line 160
    iget-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mCreate:Z

    if-eqz v3, :cond_3

    .line 161
    const v3, 0x7f0a0bf9

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->setTitle(I)V

    .line 168
    :goto_1
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v5, 0x7f0e02a8

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->changeType(I)V

    .line 174
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v5, 0x7f0e02b6

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 175
    .local v1, "showOptions":Landroid/view/View;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 177
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    :goto_2
    const v3, 0x7f0a0bf5

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v5}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 197
    .end local v1    # "showOptions":Landroid/view/View;
    :goto_3
    const/4 v3, -0x2

    const v5, 0x7f0a0bf4

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v3, v5, v6}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 201
    invoke-super {p0, v10}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {p0, v9}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    iget-boolean v5, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mEditing:Z

    if-eqz v5, :cond_6

    .end local v2    # "valid":Z
    :goto_4
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 210
    return-void

    .restart local v2    # "valid":Z
    :cond_2
    move v3, v4

    .line 153
    goto :goto_0

    .line 163
    :cond_3
    const v3, 0x7f0a0bf7

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->setTitle(I)V

    goto :goto_1

    .line 179
    .restart local v1    # "showOptions":Landroid/view/View;
    :cond_4
    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->onClick(Landroid/view/View;)V

    goto :goto_2

    .line 186
    .end local v1    # "showOptions":Landroid/view/View;
    :cond_5
    const v3, 0x7f0a03e1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v6, v6, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mView:Landroid/view/View;

    const v5, 0x7f0e02bb

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 192
    const v3, 0x7f0a0bf6

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v3, v5}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_3

    .line 204
    :cond_6
    invoke-direct {p0, v4}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v2

    goto :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 234
    invoke-direct {p0, p3}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->changeType(I)V

    .line 236
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 237
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 223
    return-void
.end method
