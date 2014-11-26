.class Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;
.super Ljava/lang/Object;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$keyStore:Landroid/security/KeyStore;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;Landroid/widget/ListView;Landroid/security/KeyStore;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    iput-object p2, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$listView:Landroid/widget/ListView;

    iput-object p3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$keyStore:Landroid/security/KeyStore;

    iput-object p4, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1    # Landroid/content/DialogInterface;
    .param p2    # I

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    # getter for: Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mCurrentIndex:I
    invoke-static {v3}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->access$100(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;)I

    move-result v3

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getVpnPolicy()Landroid/app/enterprise/VpnPolicy;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/app/enterprise/VpnPolicy;->isUserSetAlwaysOnAllowed(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$keyStore:Landroid/security/KeyStore;

    const-string v4, "LOCKDOWN_VPN"

    invoke-virtual {v3, v4}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    :goto_1
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->updateLockdownVpn()Z

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->this$0:Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;

    # getter for: Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->mProfiles:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;->access$200(Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment;)Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    invoke-virtual {v2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$context:Landroid/content/Context;

    const v4, 0x7f090c2e

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings$LockdownConfigFragment$1;->val$keyStore:Landroid/security/KeyStore;

    const-string v4, "LOCKDOWN_VPN"

    iget-object v5, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    goto :goto_1
.end method
