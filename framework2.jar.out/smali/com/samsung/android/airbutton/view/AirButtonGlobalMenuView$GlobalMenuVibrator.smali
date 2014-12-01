.class Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;
.super Ljava/lang/Object;
.source "AirButtonGlobalMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalMenuVibrator"
.end annotation


# instance fields
.field isHapticFeedbackEnabled:Z

.field private mCloseIvt:[B

.field private mFocusIvt:[B

.field private mOpenIvt:[B

.field private mVibrator:Landroid/os/SystemVibrator;

.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->isHapticFeedbackEnabled:Z

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mOpenIvt:[B

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mCloseIvt:[B

    const/16 v0, 0x24

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mFocusIvt:[B

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$100(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x32t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x0t
        0x23t
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x2bt
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x5et
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        -0x63t
        -0x2ft
        0x5ft
        -0x1t
        0x20t
        0x1t
        0x0t
        0x0t
        0x74t
        0x0t
        0x0t
        0x41t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x3et
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x0t
        0x3t
        0x0t
        0x3at
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1bt
        0x0t
        0x2bt
        0x0t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x9t
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        0x4bt
        -0xft
        -0x20t
        0x2t
        -0x1et
        0x0t
        -0x5ct
        -0xft
        -0x20t
        0x1t
        -0x1et
        0x0t
        -0x1dt
        -0x2ft
        0x5ft
        -0x1t
        0x30t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
        0x7et
        0x0t
        0x0t
        -0x3ft
        0x20t
        0x0t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        -0x7et
        0x0t
    .end array-data

    nop

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
        0x38t
        0x0t
        0xdt
        0x0t
        0x0t
        0x7ft
        0x0t
        0x20t
        0x5t
        0x0t
        0x0t
        0x11t
        0x0t
        0x0t
        -0x3et
        0x0t
    .end array-data
.end method


# virtual methods
.method playVibrator(I)V
    .locals 5

    const/4 v4, -0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$200(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SystemVibrator;

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$300(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->this$0:Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    # getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;->access$400(Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "spen_feedback_haptic_air_command"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->isHapticFeedbackEnabled:Z

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->isHapticFeedbackEnabled:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_1

    if-ne p1, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mOpenIvt:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mCloseIvt:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mVibrator:Landroid/os/SystemVibrator;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView$GlobalMenuVibrator;->mFocusIvt:[B

    invoke-virtual {v0, v1}, Landroid/os/SystemVibrator;->vibrateImmVibe([B)V

    goto :goto_1
.end method
