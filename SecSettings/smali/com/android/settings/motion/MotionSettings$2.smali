.class Lcom/android/settings/motion/MotionSettings$2;
.super Ljava/lang/Object;
.source "MotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionSettings;->makeTalkBackDisablePopup(Landroid/preference/CheckBoxPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionSettings;

.field final synthetic val$dbString:Ljava/lang/String;

.field final synthetic val$mHandPreference:Landroid/preference/CheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionSettings;Ljava/lang/String;Landroid/preference/CheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings$2;->this$0:Lcom/android/settings/motion/MotionSettings;

    iput-object p2, p0, Lcom/android/settings/motion/MotionSettings$2;->val$dbString:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/motion/MotionSettings$2;->val$mHandPreference:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1    # Landroid/content/DialogInterface;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings$2;->this$0:Lcom/android/settings/motion/MotionSettings;

    # getter for: Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/motion/MotionSettings;->access$000(Lcom/android/settings/motion/MotionSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings$2;->val$dbString:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings$2;->val$mHandPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
