.class public final Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/lenovo/settings/LenovoStatusStateOperation;


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothEnabler"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

.field private mSwitch:Landroid/widget/Switch;

.field private mUpdateStatusOnly:Z

.field private mValidListener:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 59
    new-instance v1, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler$1;-><init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 72
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    .line 74
    invoke-static {p1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 75
    .local v0, "manager":Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;
    if-nez v0, :cond_0

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    .line 78
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 82
    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 83
    return-void

    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    goto :goto_0
.end method

.method private setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 188
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 191
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 195
    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    const-string v1, "BluetoothEnabler"

    invoke-interface {v0, v1, p1}, Lcom/lenovo/settings/LenovoStatusStateChangeListener;->onStateChange(Ljava/lang/String;Z)V

    .line 202
    :cond_2
    return-void
.end method


# virtual methods
.method public getRunningState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "isOn":Z
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 210
    .local v1, "manager":Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;
    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v1}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 213
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 214
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0259

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    :goto_1
    return-object v2

    .line 211
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 216
    :cond_2
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f0a025a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method handleStateChanged(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 143
    packed-switch p1, :pswitch_data_0

    .line 182
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 183
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 185
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 150
    :pswitch_1
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 151
    const-string v0, "BluetoothEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-direct {p0, v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 155
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 158
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 159
    const-string v0, "BluetoothEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .line 169
    :pswitch_3
    iput-boolean v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 170
    const-string v0, "BluetoothEnabler"

    const-string v1, "Begin update status: set mUpdateStatusOnly to true"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 174
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 177
    iput-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    .line 178
    const-string v0, "BluetoothEnabler"

    const-string v1, "End update status: set mUpdateStatusOnly to false"

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 125
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth"

    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/Utils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f0a06de

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    invoke-virtual {p1, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 133
    :cond_0
    const-string v0, "BluetoothEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUpdateStatusOnly is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mUpdateStatusOnly:Z

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0, p2}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->setBluetoothEnabled(Z)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 140
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 97
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->handleStateChanged(I)V

    .line 94
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    goto :goto_0
.end method

.method public setOnStatusStateChangedListener(Lcom/lenovo/settings/LenovoStatusStateChangeListener;)V
    .locals 0
    .param p1, "onStatusChangeListener"    # Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mStatusListener:Lcom/lenovo/settings/LenovoStatusStateChangeListener;

    .line 228
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 8
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 110
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v6, p1, :cond_0

    .line 121
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 112
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    .line 113
    iget-object v6, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    iget-boolean v7, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mValidListener:Z

    if-eqz v7, :cond_1

    move-object v3, p0

    :cond_1
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    const/16 v0, 0xa

    .line 116
    .local v0, "bluetoothState":I
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mLocalAdapter:Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/flyme/deviceoriginalsettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 117
    :cond_2
    const/16 v3, 0xc

    if-ne v0, v3, :cond_5

    move v2, v4

    .line 118
    .local v2, "isOn":Z
    :goto_1
    const/16 v3, 0xa

    if-ne v0, v3, :cond_6

    move v1, v4

    .line 119
    .local v1, "isOff":Z
    :goto_2
    invoke-direct {p0, v2}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->setChecked(Z)V

    .line 120
    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move v5, v4

    :cond_4
    invoke-virtual {v3, v5}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    .end local v1    # "isOff":Z
    .end local v2    # "isOn":Z
    :cond_5
    move v2, v5

    .line 117
    goto :goto_1

    .restart local v2    # "isOn":Z
    :cond_6
    move v1, v5

    .line 118
    goto :goto_2
.end method
