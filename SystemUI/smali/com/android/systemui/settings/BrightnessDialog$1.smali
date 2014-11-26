.class Lcom/android/systemui/settings/BrightnessDialog$1;
.super Ljava/lang/Object;
.source "BrightnessDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDialog$1;->this$0:Lcom/android/systemui/settings/BrightnessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog$1;->this$0:Lcom/android/systemui/settings/BrightnessDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog$1;->this$0:Lcom/android/systemui/settings/BrightnessDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
