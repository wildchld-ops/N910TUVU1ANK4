.class Lcom/android/settings/BrightnessFragment$3;
.super Landroid/database/ContentObserver;
.source "BrightnessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BrightnessFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessFragment;Landroid/os/Handler;)V
    .locals 0
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/settings/BrightnessFragment$3;->this$0:Lcom/android/settings/BrightnessFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1    # Z

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment$3;->this$0:Lcom/android/settings/BrightnessFragment;

    # invokes: Lcom/android/settings/BrightnessFragment;->onAutoBrightnessDetailChanged()V
    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->access$300(Lcom/android/settings/BrightnessFragment;)V

    return-void
.end method
