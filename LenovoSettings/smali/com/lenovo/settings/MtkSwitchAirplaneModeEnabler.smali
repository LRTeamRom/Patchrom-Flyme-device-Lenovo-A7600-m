.class public Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
.super Ljava/lang/Object;
.source "MtkSwitchAirplaneModeEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final ACTION_NOTIFY_AIRPLANE_STATUS_CHANGE:Ljava/lang/String; = "action.lenovo.notify_airplane_status_change"

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "MtkSwitchAirplaneModeEnabler"


# instance fields
.field private mAirplaneConfirmDialog:Landroid/app/Dialog;

.field private mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

.field mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mServiceState1:I

.field private mServiceState2:I

.field private mServiceState3:I

.field private mServiceState4:I

.field private mSwitch:Landroid/widget/Switch;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "airplaneModeCheckBoxPreference"    # Landroid/preference/CheckBoxPreference;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    .line 76
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    .line 78
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState3:I

    .line 79
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState4:I

    .line 173
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$2;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 207
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$3;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$3;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 216
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$4;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$4;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    .line 224
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$5;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$5;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    .line 96
    iput-object p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 99
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 102
    invoke-virtual {p2, v1}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 103
    iput-boolean v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mValidListener:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x3

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    .line 76
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    .line 78
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState3:I

    .line 79
    iput v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState4:I

    .line 173
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$1;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 197
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$2;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$2;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    .line 207
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$3;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$3;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    .line 216
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$4;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$4;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    .line 224
    new-instance v0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$5;

    invoke-direct {v0, p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler$5;-><init>(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    .line 108
    const-string v0, "MtkSwitchAirplaneModeEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "construct mtkswitch airplanemode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 112
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    const-class v1, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->initialTelephonyManagerEx(Landroid/content/Context;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    return p1
.end method

.method static synthetic access$400(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method static synthetic access$502(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    return p1
.end method

.method static synthetic access$602(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState3:I

    return p1
.end method

.method static synthetic access$702(Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState4:I

    return p1
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 4

    .prologue
    const/4 v2, 0x3

    .line 310
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 312
    .local v0, "airplaneModeEnabled":Z
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMtkGemini()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 314
    if-eqz v0, :cond_3

    .line 315
    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState3:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState4:I

    if-eq v1, v2, :cond_3

    .line 319
    :cond_0
    const-string v1, "MtkSwitchAirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unfinish! serviceState1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceState2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    if-eqz v0, :cond_3

    .line 327
    iget v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    if-eq v1, v2, :cond_3

    .line 328
    const-string v1, "MtkSwitchAirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unfinish! serviceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mServiceState1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_3
    const-string v1, "MtkSwitchAirplaneModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish! airplaneModeEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 336
    :cond_4
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 413
    invoke-direct {p0, p2}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 415
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a05fd

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "airplane_mode"

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/settings/recentsettings/RecentSettingsApi;->addChangePluginSwitchAction(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void
.end method

.method private regListenForGeminiPlus(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMTK_GEMINI_3SIM_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_3()I

    move-result v2

    const-class v3, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMTK_GEMINI_4SIM_SUPPORT()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener3:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_3()I

    move-result v2

    const-class v3, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener4:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_4()I

    move-result v2

    const-class v3, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    goto :goto_0
.end method

.method private setAirplaneModeOn(Z)V
    .locals 5
    .param p1, "enabling"    # Z

    .prologue
    const/4 v2, 0x0

    .line 278
    const-string v1, "MtkSwitchAirplaneModeEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAirplaneModeOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/lenovo/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 285
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 298
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    move v1, v2

    .line 280
    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 455
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 458
    iget-boolean v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 462
    iget-boolean v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 466
    :cond_1
    return-void
.end method

.method private showAirplaneConfirmDialog()V
    .locals 2

    .prologue
    .line 422
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 428
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 448
    invoke-direct {p0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setChecked(Z)V

    .line 452
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 391
    const-string v0, "MtkSwitchAirplaneModeEnabler"

    const-string v1, "onCheckChanged"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 402
    :cond_2
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 403
    invoke-direct {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->showAirplaneConfirmDialog()V

    goto :goto_0

    .line 405
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 432
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-direct {p0, v0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->orignalonCheckedChanged(Landroid/widget/CompoundButton;Z)V

    .line 436
    invoke-direct {p0, v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 348
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 352
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 237
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v6}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 240
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMtkGemini()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    iget-object v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_1()I

    move-result v3

    const-class v4, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    iget-object v3, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_2()I

    move-result v3

    const-class v4, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 251
    invoke-direct {p0, v5}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->regListenForGeminiPlus(I)V

    .line 258
    :cond_1
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_1
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v1

    const-class v2, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->releaseMtkTelephonyManagerExt(Ljava/lang/String;)V

    .line 264
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mValidListener:Z

    .line 265
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 269
    :cond_2
    iput-object v6, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneConfirmDialog:Landroid/app/Dialog;

    .line 270
    return-void

    .line 253
    :cond_3
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    .line 260
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 123
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 131
    :cond_1
    iput-boolean v4, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mValidListener:Z

    .line 134
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkFeaturePlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/settings/manager/MtkFeaturePlugin;->isSupportMtkGemini()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 141
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_1()I

    move-result v2

    const-class v3, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener2:Landroid/telephony/PhoneStateListener;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/MtkTelephonePlugin;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->getConstantGEMINI_SIM_2()I

    move-result v2

    const-class v3, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/lenovo/settings/manager/MtkTelephonePlugin;->listen(Landroid/telephony/PhoneStateListener;IILjava/lang/String;)V

    .line 151
    invoke-direct {p0, v4}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->regListenForGeminiPlus(I)V

    .line 158
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 161
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "action.lenovo.notify_airplane_status_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 166
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 171
    return-void

    .line 153
    :cond_5
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mPhoneStateListener1:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 1
    .param p1, "isECMExit"    # Z
    .param p2, "isAirplaneModeOn"    # Z

    .prologue
    .line 358
    if-eqz p1, :cond_1

    .line 360
    invoke-direct {p0, p2}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->onAirplaneModeChanged()V

    goto :goto_0
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 3
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    .line 469
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 475
    :goto_0
    return-void

    .line 471
    :cond_0
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 472
    iput-object p1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 473
    iget-object v1, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mValidListener:Z

    if-eqz v2, :cond_1

    move-object v0, p0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 474
    iget-object v0, p0, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/lenovo/settings/MtkSwitchAirplaneModeEnabler;->setChecked(Z)V

    goto :goto_0
.end method
