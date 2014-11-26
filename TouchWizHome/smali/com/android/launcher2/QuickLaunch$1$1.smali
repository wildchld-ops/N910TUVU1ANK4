.class Lcom/android/launcher2/QuickLaunch$1$1;
.super Ljava/lang/Object;
.source "QuickLaunch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/QuickLaunch$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/QuickLaunch$1;


# direct methods
.method constructor <init>(Lcom/android/launcher2/QuickLaunch$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/QuickLaunch$1$1;->this$1:Lcom/android/launcher2/QuickLaunch$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.DVFS_BOOSTER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PACKAGE"

    iget-object v2, p0, Lcom/android/launcher2/QuickLaunch$1$1;->this$1:Lcom/android/launcher2/QuickLaunch$1;

    iget-object v2, v2, Lcom/android/launcher2/QuickLaunch$1;->this$0:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DURATION"

    const-string v2, "1000"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher2/QuickLaunch$1$1;->this$1:Lcom/android/launcher2/QuickLaunch$1;

    iget-object v1, v1, Lcom/android/launcher2/QuickLaunch$1;->this$0:Lcom/android/launcher2/QuickLaunch;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
