.class Lcom/android/settings/dmr/DMRSettings$1;
.super Ljava/lang/Object;
.source "DMRSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dmr/DMRSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dmr/DMRSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dmr/DMRSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1    # Landroid/content/ComponentName;
    .param p2    # Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-static {p2}, Lcom/sec/android/allshare/dmrservice/IMediaRenderer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    const-string v1, "Settings"

    const-string v2, "ServiceConnection"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    iget-object v1, v1, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    if-nez v1, :cond_0

    const-string v1, "Settings"

    const-string v2, "mIMediaServer == null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    iget-object v2, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    # invokes: Lcom/android/settings/dmr/DMRSettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    invoke-static {v1, v2, v0}, Lcom/android/settings/dmr/DMRSettings;->access$000(Lcom/android/settings/dmr/DMRSettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    # invokes: Lcom/android/settings/dmr/DMRSettings;->refreshPreferenceValues()V
    invoke-static {v1}, Lcom/android/settings/dmr/DMRSettings;->access$100(Lcom/android/settings/dmr/DMRSettings;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1    # Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/dmr/DMRSettings$1;->this$0:Lcom/android/settings/dmr/DMRSettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/dmr/DMRSettings;->mService:Lcom/sec/android/allshare/dmrservice/IMediaRenderer;

    return-void
.end method
