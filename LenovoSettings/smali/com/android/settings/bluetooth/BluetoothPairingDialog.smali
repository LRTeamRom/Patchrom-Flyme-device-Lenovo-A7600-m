.class public final Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# static fields
.field private static final BLUETOOTH_PASSKEY_MAX_LENGTH:I = 0x6

.field private static final BLUETOOTH_PIN_MAX_LENGTH:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BluetoothPairingDialog"


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mPairingKey:Ljava/lang/String;

.field private mPairingView:Landroid/widget/EditText;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 71
    new-instance v0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private createConfirmationDialog(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .param p1, "deviceManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 258
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0a0678

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 262
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->createConfirmationDialogContentView(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 264
    const v1, 0x7f0a0681

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 265
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 266
    const v1, 0x7f0a0682

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 267
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 268
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 269
    return-void
.end method

.method private createConfirmationDialogContentView(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;
    .locals 6
    .param p1, "deviceManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040014

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 307
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0e0030

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 308
    .local v0, "deviceName":Landroid/widget/TextView;
    const v3, 0x7f0e0031

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 309
    .local v1, "pairKey":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 310
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    return-object v2
.end method

.method private createConsentDialog(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 2
    .param p1, "deviceManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 274
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0a0678

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 275
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->createView(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 276
    const v1, 0x7f0a0681

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 277
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 278
    const v1, 0x7f0a0682

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 279
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 280
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 281
    return-void
.end method

.method private createDisplayPasskeyOrPinDialog(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 4
    .param p1, "deviceManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 287
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f0a0678

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 288
    invoke-direct {p0, p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->createView(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 289
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 290
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 291
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 295
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 296
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 298
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 299
    .local v1, "pinBytes":[B
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0
.end method

.method private createPinEntryView(Ljava/lang/String;)Landroid/view/View;
    .locals 13
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 181
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v10, 0x7f040016

    invoke-virtual {v8, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 182
    .local v7, "view":Landroid/view/View;
    const v8, 0x7f0e002e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 183
    .local v5, "messageView":Landroid/widget/TextView;
    const v8, 0x7f0e0035

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 184
    .local v6, "messageView2":Landroid/widget/TextView;
    const v8, 0x7f0e0034

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 185
    .local v0, "alphanumericPin":Landroid/widget/CheckBox;
    const v8, 0x7f0e0032

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 186
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v8, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 187
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 192
    iget v8, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v8, :pswitch_data_0

    .line 209
    const-string v8, "BluetoothPairingDialog"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Incorrect pairing type for createPinEntryView: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 221
    .end local v7    # "view":Landroid/view/View;
    :goto_0
    return-object v7

    .line 194
    .restart local v7    # "view":Landroid/view/View;
    :pswitch_0
    const v2, 0x7f0a0679

    .line 195
    .local v2, "messageId1":I
    const v3, 0x7f0a067d

    .line 197
    .local v3, "messageId2":I
    const/16 v1, 0x10

    .line 214
    .local v1, "maxLength":I
    :goto_1
    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v11

    invoke-virtual {p0, v2, v8}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 215
    .local v4, "messageText":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setInputType(I)V

    .line 218
    iget-object v8, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    new-array v9, v12, [Landroid/text/InputFilter;

    new-instance v10, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v10, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v10, v9, v11

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 201
    .end local v1    # "maxLength":I
    .end local v2    # "messageId1":I
    .end local v3    # "messageId2":I
    .end local v4    # "messageText":Ljava/lang/String;
    :pswitch_1
    const v2, 0x7f0a067a

    .line 202
    .restart local v2    # "messageId1":I
    const v3, 0x7f0a067e

    .line 204
    .restart local v3    # "messageId2":I
    const/4 v1, 0x6

    .line 205
    .restart local v1    # "maxLength":I
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createUserEntryDialog(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)V
    .locals 3
    .param p1, "deviceManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 168
    .local v0, "p":Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f0a0678

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 169
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->createPinEntryView(Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 170
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 171
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 172
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 173
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 174
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 176
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 177
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    return-void
.end method

.method private createView(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)Landroid/view/View;
    .locals 10
    .param p1, "deviceManager"    # Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040015

    invoke-virtual {v5, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 226
    .local v3, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "name":Ljava/lang/String;
    const v5, 0x7f0e002e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 230
    .local v1, "messageView":Landroid/widget/TextView;
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 248
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Incorrect pairing type received, not creating view"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 252
    .end local v3    # "view":Landroid/view/View;
    :goto_0
    return-object v3

    .line 232
    .restart local v3    # "view":Landroid/view/View;
    :pswitch_0
    const v4, 0x7f0a067f

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "messageText":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 238
    .end local v0    # "messageText":Ljava/lang/String;
    :pswitch_1
    const v4, 0x7f0a0680

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "messageText":Ljava/lang/String;
    goto :goto_1

    .line 243
    .end local v0    # "messageText":Ljava/lang/String;
    :pswitch_2
    const v4, 0x7f0a03ef

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 245
    .restart local v0    # "messageText":Ljava/lang/String;
    goto :goto_1

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 363
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 328
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 357
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 330
    :pswitch_1
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 331
    .local v1, "pinBytes":[B
    if-eqz v1, :cond_0

    .line 334
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 338
    .end local v1    # "pinBytes":[B
    :pswitch_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 339
    .local v0, "passkey":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 344
    .end local v0    # "passkey":I
    :pswitch_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 353
    :pswitch_4
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private stringFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 409
    const-string v2, "[^\\x20-\\x7e]"

    .line 410
    .local v2, "regEx":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 411
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 412
    .local v0, "matcher":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 322
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 323
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 325
    :cond_0
    return-void

    .line 323
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 391
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 433
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :goto_0
    return-void

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "BluetoothPairingDialog"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 417
    if-eqz p2, :cond_0

    .line 421
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 373
    packed-switch p2, :pswitch_data_0

    .line 384
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 387
    :goto_0
    return-void

    .line 375
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 378
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 373
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v7, -0x80000000

    .line 93
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 163
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    move-result-object v2

    .line 105
    .local v2, "manager":Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;
    if-nez v2, :cond_1

    .line 106
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Error: BluetoothAdapter not supported by system"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->finish()V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    .line 112
    .local v0, "deviceManager":Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 113
    const-string v5, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 115
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 154
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_1
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 118
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 122
    :pswitch_1
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 124
    .local v4, "passkey":I
    if-ne v4, v7, :cond_2

    .line 125
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Invalid Confirmation Passkey received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_2
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%06d"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 129
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 134
    .end local v4    # "passkey":I
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->createConsentDialog(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 139
    :pswitch_3
    const-string v5, "android.bluetooth.device.extra.PAIRING_KEY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 141
    .local v3, "pairingKey":I
    if-ne v3, v7, :cond_3

    .line 142
    const-string v5, "BluetoothPairingDialog"

    const-string v6, "Invalid Confirmation Passkey or PIN received, not showing any dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 145
    :cond_3
    iget v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 146
    const-string v5, "%06d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    .line 150
    :goto_2
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyOrPinDialog(Lcom/flyme/deviceoriginalsettings/bluetooth/CachedBluetoothDeviceManager;)V

    goto :goto_1

    .line 148
    :cond_4
    const-string v5, "%04d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingKey:Ljava/lang/String;

    goto :goto_2

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 317
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 318
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 319
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 366
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 369
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 396
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "pinCodeStr":Ljava/lang/String;
    const-string v2, "BluetoothPairingDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTextChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->stringFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 406
    .end local v0    # "pinCodeStr":Ljava/lang/String;
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method
