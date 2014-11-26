.class Landroid/widget/AbsListView$PenSelectVibrator;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenSelectVibrator"
.end annotation


# instance fields
.field isHapticFeedbackEnabled:Z

.field private mIvt:[B

.field private mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2

    iput-object p1, p0, Landroid/widget/AbsListView$PenSelectVibrator;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mIvt:[B

    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/AbsListView;->access$6600(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x1ct
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x7t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x1t
        0x30t
        0x36t
        0x0t
        0xbt
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x4t
        0x0t
        0x0t
        0x1bt
        0x0t
        0x0t
        0x22t
        0x0t
    .end array-data
.end method


# virtual methods
.method playVibrator()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$6700(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic_pen_gesture"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    iget-boolean v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$6900(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.VIBRATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/widget/AbsListView$PenSelectVibrator;->mIvt:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method
