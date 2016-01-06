.class Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps$PackageEntryClickedListener;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageEntryClickedListener"
.end annotation


# instance fields
.field private mPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps$PackageEntryClickedListener;->this$0:Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/location/RecentLocationApps$PackageEntryClickedListener;->mPackage:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method
