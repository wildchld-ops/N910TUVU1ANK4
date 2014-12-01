.class Lcom/android/settings/motion/MotionSettings$1;
.super Ljava/lang/Object;
.source "MotionSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings$1;->this$0:Lcom/android/settings/motion/MotionSettings;

    iput-object p2, p0, Lcom/android/settings/motion/MotionSettings$1;->val$dbString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings$1;->this$0:Lcom/android/settings/motion/MotionSettings;

    # getter for: Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion/MotionSettings;->access$000(Lcom/android/settings/motion/MotionSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings$1;->this$0:Lcom/android/settings/motion/MotionSettings;

    # getter for: Lcom/android/settings/motion/MotionSettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/motion/MotionSettings;->access$000(Lcom/android/settings/motion/MotionSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings$1;->val$dbString:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
