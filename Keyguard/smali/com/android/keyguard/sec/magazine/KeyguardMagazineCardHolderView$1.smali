.class Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;
.super Ljava/lang/Object;
.source "KeyguardMagazineCardHolderView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardViewBase$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->unlockAndLaunchApplication()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "onDismiss"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mIsCardSelected:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$000(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isPreviousLook()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView$1;->this$0:Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;

    # getter for: Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->mCardRecord:Lcom/samsung/android/magazinecard/MagazineCardRecord;
    invoke-static {v2}, Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;->access$100(Lcom/android/keyguard/sec/magazine/KeyguardMagazineCardHolderView;)Lcom/samsung/android/magazinecard/MagazineCardRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/magazinecard/MagazineCardRecord;->mCardInfo:Lcom/samsung/android/magazinecard/MagazineCardInfo;

    iget-object v1, v2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mLaunchIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_1

    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "unlockAndLaunchApplication : launch intent is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "Cannot send pending intent due to : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "KeyguardMagazineCardHolderView"

    const-string v3, "dismissKeyguard remoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
