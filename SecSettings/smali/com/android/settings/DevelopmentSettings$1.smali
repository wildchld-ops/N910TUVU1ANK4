.class Lcom/android/settings/DevelopmentSettings$1;
.super Ljava/lang/Object;
.source "DevelopmentSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DevelopmentSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newRuntimeValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    iput-object p2, p0, Lcom/android/settings/DevelopmentSettings$1;->val$newRuntimeValue:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/DevelopmentSettings$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const-string v1, "persist.sys.dalvik.vm.lib"

    iget-object v2, p0, Lcom/android/settings/DevelopmentSettings$1;->val$newRuntimeValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$1;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-virtual {v1}, Lcom/android/settings/DevelopmentSettings;->pokeSystemProperties()V

    iget-object v1, p0, Lcom/android/settings/DevelopmentSettings$1;->val$context:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method
