.class Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$keyStore:Landroid/security/KeyStore;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 709
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;

    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$keyStore:Landroid/security/KeyStore;

    iput-object p4, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v6, 0x1

    .line 712
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 713
    .local v0, "newIndex":I
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;->access$400(Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 740
    :goto_0
    return-void

    .line 715
    :cond_0
    if-nez v0, :cond_1

    .line 716
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$keyStore:Landroid/security/KeyStore;

    const-string v3, "LOCKDOWN_VPN"

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 739
    :goto_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-virtual {v2}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    goto :goto_0

    .line 719
    :cond_1
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;

    # getter for: Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;
    invoke-static {v2}, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;->access$500(Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/VpnProfile;

    .line 720
    .local v1, "profile":Lcom/android/internal/net/VpnProfile;
    invoke-virtual {v1}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v2

    if-nez v2, :cond_2

    .line 721
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$context:Landroid/content/Context;

    const v3, 0x7f0a0bff

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 727
    :cond_2
    iget-boolean v2, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-nez v2, :cond_3

    .line 728
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$context:Landroid/content/Context;

    const v3, 0x7f0a027b

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 734
    :cond_3
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$keyStore:Landroid/security/KeyStore;

    const-string v3, "LOCKDOWN_VPN"

    iget-object v4, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    goto :goto_1
.end method