.class Lcom/android/settings/CurrentLocationFragment$1;
.super Ljava/lang/Object;
.source "CurrentLocationFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CurrentLocationFragment;->checkLocationAavilability()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CurrentLocationFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/CurrentLocationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CurrentLocationFragment$1;->this$0:Lcom/android/settings/CurrentLocationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment$1;->this$0:Lcom/android/settings/CurrentLocationFragment;

    iget-object v2, p0, Lcom/android/settings/CurrentLocationFragment$1;->this$0:Lcom/android/settings/CurrentLocationFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/CurrentLocationFragment;->getUseLocationAgreed(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    # setter for: Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z
    invoke-static {v1, v0}, Lcom/android/settings/CurrentLocationFragment;->access$002(Lcom/android/settings/CurrentLocationFragment;Z)Z

    iget-object v0, p0, Lcom/android/settings/CurrentLocationFragment$1;->this$0:Lcom/android/settings/CurrentLocationFragment;

    # getter for: Lcom/android/settings/CurrentLocationFragment;->mSwitchView:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/CurrentLocationFragment;->access$100(Lcom/android/settings/CurrentLocationFragment;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/CurrentLocationFragment$1;->this$0:Lcom/android/settings/CurrentLocationFragment;

    # getter for: Lcom/android/settings/CurrentLocationFragment;->mWeatherAgreed:Z
    invoke-static {v1}, Lcom/android/settings/CurrentLocationFragment;->access$000(Lcom/android/settings/CurrentLocationFragment;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
