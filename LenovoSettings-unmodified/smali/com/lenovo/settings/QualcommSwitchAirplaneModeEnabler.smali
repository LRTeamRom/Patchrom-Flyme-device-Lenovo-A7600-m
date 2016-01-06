.class public Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;
.super Ljava/lang/Object;
.source "QualcommSwitchAirplaneModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "QualcommSwitchAirplaneModeEnabler"


# instance fields
.field private mAirplaneConfirmDialog:Landroid/app/Dialog;

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeSwitch"    # Landroid/widget/Switch;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$1;-><init>(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler$2;-><init>(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 88
    const-string v0, "QualcommSwitchAirplaneModeEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitchAirplaneModeEnabler, context->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput-object p1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 93
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 125
    .local v0, "airplane":Z
    :cond_0
    const-string v1, "QualcommSwitchAirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitchAirplaneModeEnabler, isAirplaneModeOn, airplane->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 3

    .prologue
    .line 156
    const-string v0, "airplane"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitchAirplaneModeEnabler, onAirplaneModeChanged,sWitch is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isAirplaneModeOn is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 158
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 160
    return-void
.end method

.method private orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 205
    const-string v0, "QualcommSwitchAirplaneModeEnabler"

    const-string v1, "SwitchAirplaneModeEnabler, orignalonCheckedChanged, setAirplaneModeOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-direct {p0, p2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 209
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a05fd

    iget-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "airplane_mode"

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangePluginSwitchAction(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    .line 132
    const-string v1, "QualcommSwitchAirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SwitchAirplaneModeEnabler setAirplaneModeOn enabling :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mSwitch isCheck is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 139
    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 144
    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 145
    const-string v1, "QualcommSwitchAirplaneModeEnabler"

    const-string v2, "SwitchAirplaneModeEnabler, setAirplaneModeOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void

    .line 136
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showAirplaneConfirmDialog()V
    .locals 2

    .prologue
    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0257

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0258

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 222
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 248
    const-string v0, "QualcommSwitchAirplaneModeEnabler"

    const-string v1, "SwitchAirplaneModeEnabler onDialog onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0, v2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 250
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 251
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 179
    const-string v1, "QualcommSwitchAirplaneModeEnabler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitchAirplaneModeEnabler onCheckedChanged mSwitch isChecked is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",isChecked is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",isAirplaneConfirmDialog.isShowing is:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :goto_1
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    invoke-direct {p0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->showAirplaneConfirmDialog()V

    goto :goto_1

    .line 190
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 235
    const-string v0, "QualcommSwitchAirplaneModeEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitchAirplaneModeEnabler onClick which is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0, v3}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 240
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    const-string v0, "QualcommSwitchAirplaneModeEnabler"

    const-string v1, "SwitchAirplaneModeEnabler, pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 111
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 115
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 119
    :cond_0
    iput-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 120
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 98
    const-string v0, "QualcommSwitchAirplaneModeEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwitchAirplaneModeEnabler, mContext->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 102
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 106
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 2
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 163
    if-eqz p1, :cond_0

    .line 165
    const-string v0, "QualcommSwitchAirplaneModeEnabler"

    const-string v1, "SwitchAirplaneModeEnabler, setAirplaneModeInECM, setAirplaneModeOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-direct {p0, p2}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string v0, "QualcommSwitchAirplaneModeEnabler"

    const-string v1, "SwitchAirplaneModeEnabler, setAirplaneModeInECM, onAirplaneModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 231
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 228
    iput-object p1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 229
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/lenovo/settings/QualcommSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method
