.class Lcom/android/server/am/AppPcService$AppPcServiceResources;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppPcServiceResources"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$AppPcServiceResources$id;,
        Lcom/android/server/am/AppPcService$AppPcServiceResources$layout;,
        Lcom/android/server/am/AppPcService$AppPcServiceResources$string;
    }
.end annotation


# static fields
.field public static sPermissionLabels:[Ljava/lang/String; = null

.field private static final sSecurityPkg:Ljava/lang/String; = "com.lenovo.security"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2153
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "permission_label_location"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "permission_label_location"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "permission_label_read_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "permission_label_write_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "permission_label_read_call_log"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "permission_label_write_call_log"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "permission_label_read_calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "permission_label_write_calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "permission_label_access_wifi"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "permission_label_access_network"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "permission_label_bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "permission_label_bluetooth"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "permission_label_call_phone"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "permission_label_read_sms"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "permission_label_write_sms"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "permission_label_send_sms"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "permission_label_receive_msg"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "permission_label_receive_msg"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "permission_label_receive_msg"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "permission_label_camera"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "permission_label_record_audio"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "permission_label_send_mms"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/AppPcService$AppPcServiceResources;->sPermissionLabels:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2194
    return-void
.end method

.method public static getLayoutFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2139
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2140
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2151
    :cond_0
    :goto_0
    return-object v4

    .line 2143
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2144
    .local v3, "res":Landroid/content/res/Resources;
    const-string v5, "layout"

    const-string v6, "com.lenovo.security"

    invoke-virtual {v3, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2145
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 2148
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->setTheme(I)V

    .line 2149
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2150
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2151
    .local v4, "view":Landroid/view/View;
    goto :goto_0
.end method

.method private static getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2104
    const/4 v0, 0x0

    .line 2106
    .local v0, "appContext":Landroid/content/Context;
    :try_start_0
    const-string v2, "com.lenovo.security"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2111
    :goto_0
    return-object v0

    .line 2108
    :catch_0
    move-exception v1

    .line 2109
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Security_AppPcService"

    const-string v3, "getSecurityAppContext error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2115
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2116
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2124
    :cond_0
    :goto_0
    return-object v3

    .line 2119
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2120
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "string"

    const-string v5, "com.lenovo.security"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2121
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 2124
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static varargs getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 2127
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2128
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2136
    :cond_0
    :goto_0
    return-object v3

    .line 2131
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2132
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "string"

    const-string v5, "com.lenovo.security"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2133
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 2136
    invoke-virtual {v2, v1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
