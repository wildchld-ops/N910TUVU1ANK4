.class Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;
.super Ljava/lang/Object;
.source "WritingBuddyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/writingbuddy/WritingBuddyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventChecker"
.end annotation


# static fields
.field static action:I

.field static x:F

.field static y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/high16 v1, -0x40800000

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->action:I

    sput v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->x:F

    sput v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->y:F

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDuplicated(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const/4 v4, -0x1

    sput v4, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->action:I

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v4, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->action:I

    if-ne v0, v4, :cond_1

    sget v4, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->x:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_1

    sget v4, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->y:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_2

    :cond_1
    sput v0, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->action:I

    sput v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->x:F

    sput v2, Lcom/samsung/android/writingbuddy/WritingBuddyImpl$EventChecker;->y:F

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method
