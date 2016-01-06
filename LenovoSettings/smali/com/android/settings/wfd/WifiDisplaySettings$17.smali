.class Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V

    .line 768
    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 772
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V

    .line 773
    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 777
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V

    .line 778
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 782
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V

    .line 783
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 2
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings$17;->this$0:Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;

    const/4 v1, 0x2

    # invokes: Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V
    invoke-static {v0, v1}, Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;->access$1400(Lcom/flyme/deviceoriginalsettings/wfd/WifiDisplaySettings;I)V

    .line 788
    return-void
.end method
