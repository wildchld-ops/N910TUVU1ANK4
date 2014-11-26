.class Lcom/android/launcher2/guide/GuideFragment$4;
.super Ljava/lang/Object;
.source "GuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/guide/GuideFragment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/app/Activity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/guide/GuideFragment;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$newConfig:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>(Lcom/android/launcher2/guide/GuideFragment;Landroid/app/Activity;Landroid/content/res/Configuration;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/guide/GuideFragment$4;->this$0:Lcom/android/launcher2/guide/GuideFragment;

    iput-object p2, p0, Lcom/android/launcher2/guide/GuideFragment$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/launcher2/guide/GuideFragment$4;->val$newConfig:Landroid/content/res/Configuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    iget-object v1, p0, Lcom/android/launcher2/guide/GuideFragment$4;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    sget-object v0, Lcom/android/launcher2/guide/GuideFragment;->mGuider:Lcom/android/launcher2/guide/GuiderLifecycleListener;

    iget-object v1, p0, Lcom/android/launcher2/guide/GuideFragment$4;->val$newConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Lcom/android/launcher2/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
