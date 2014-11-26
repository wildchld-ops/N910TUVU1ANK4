.class Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityMagnificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MagnificaitonObserver"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;


# direct methods
.method public constructor <init>(Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;Landroid/os/Handler;)V
    .locals 1
    .param p2    # Landroid/os/Handler;

    iput-object p1, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;->this$0:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1    # Z
    .param p2    # Landroid/net/Uri;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v2, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;->this$0:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    iget-object v2, v2, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mAccessibilityScreenMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;->this$0:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    # getter for: Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->access$000(Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    # setter for: Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->mEnabledMagnification:Z
    invoke-static {v0}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->access$102(Z)Z

    iget-object v1, p0, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat$MagnificaitonObserver;->this$0:Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;

    # invokes: Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->notifyStateChanged(Z)V
    invoke-static {v1, v0}, Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;->access$200(Lcom/sec/android/inputmethod/accessibility/AccessibilityMagnificationCompat;Z)V

    monitor-exit v2

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
