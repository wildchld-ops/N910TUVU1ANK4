.class Lcom/android/settings/BrightnessFragment$7;
.super Ljava/lang/Object;
.source "BrightnessFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BrightnessFragment;->onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/BrightnessFragment;

.field final synthetic val$val:I


# direct methods
.method constructor <init>(Lcom/android/settings/BrightnessFragment;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/BrightnessFragment$7;->this$0:Lcom/android/settings/BrightnessFragment;

    iput p2, p0, Lcom/android/settings/BrightnessFragment$7;->val$val:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    # getter for: Lcom/android/settings/BrightnessFragment;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/BrightnessFragment;->access$400()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/settings/BrightnessFragment$7;->val$val:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
