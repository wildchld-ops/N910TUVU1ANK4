.class Lcom/android/settings/BrightnessFragment$6;
.super Ljava/lang/Object;
.source "BrightnessFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BrightnessFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/BrightnessFragment$6;->this$0:Lcom/android/settings/BrightnessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/BrightnessFragment$6;->this$0:Lcom/android/settings/BrightnessFragment;

    # invokes: Lcom/android/settings/BrightnessFragment;->restoreOldState()V
    invoke-static {v0}, Lcom/android/settings/BrightnessFragment;->access$900(Lcom/android/settings/BrightnessFragment;)V

    return-void
.end method
