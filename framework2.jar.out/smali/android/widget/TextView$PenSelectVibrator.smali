.class Landroid/widget/TextView$PenSelectVibrator;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenSelectVibrator"
.end annotation


# static fields
.field public static final VIB_COPY:I = 0x2

.field public static final VIB_CURSOR_MOVE:I = 0x1

.field public static final VIB_PASTE:I = 0x3


# instance fields
.field hasPermission:Z

.field isHapticFeedbackEnabled:Z

.field private mIvtCopy:[B

.field private mIvtCursorMove:[B

.field private mIvtPaste:[B

.field private mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 3

    const/16 v2, 0x24

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iput-boolean v1, p0, Landroid/widget/TextView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    iput-boolean v1, p0, Landroid/widget/TextView$PenSelectVibrator;->hasPermission:Z

    const/16 v0, 0x1e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtCursorMove:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtCopy:[B

    new-array v0, v2, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtPaste:[B

    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$1400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x2t
        0x0t
        0x16t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x9t
        0x0t
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        0x0t
        -0x2ft
        0x4dt
        -0x1t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x41t
        -0x7dt
        -0x4et
        0x0t
    .end array-data

    nop

    :array_1
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
        0x77t
        0x0t
        0xbt
        0x0t
        0x0t
        0x7ft
        0x0t
        0x20t
        0x8t
        0x0t
        0x0t
        0xdt
        0x0t
        0x0t
        -0x7et
        0x0t
    .end array-data

    :array_2
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
        0xat
        0x0t
        0xdt
        0x0t
        0x64t
        0x7ft
        0x0t
        0x20t
        0x8t
        0x0t
        0x0t
        0xat
        0x0t
        0x0t
        -0x7et
        0x0t
    .end array-data
.end method


# virtual methods
.method playVibrator(I)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$1500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$1600(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$1700(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic_pen_gesture"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/TextView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->this$0:Landroid/widget/TextView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/TextView;->access$1800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.VIBRATE"

    invoke-virtual {v0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Landroid/widget/TextView$PenSelectVibrator;->hasPermission:Z

    iget-boolean v0, p0, Landroid/widget/TextView$PenSelectVibrator;->isHapticFeedbackEnabled:Z

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/widget/TextView$PenSelectVibrator;->hasPermission:Z

    if-ne v0, v1, :cond_2

    packed-switch p1, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtCursorMove:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtCopy:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Landroid/widget/TextView$PenSelectVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Landroid/widget/TextView$PenSelectVibrator;->mIvtPaste:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
