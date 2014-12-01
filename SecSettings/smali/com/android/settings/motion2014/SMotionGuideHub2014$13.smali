.class Lcom/android/settings/motion2014/SMotionGuideHub2014$13;
.super Landroid/database/ContentObserver;
.source "SMotionGuideHub2014.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$13;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$13;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    # invokes: Lcom/android/settings/motion2014/SMotionGuideHub2014;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$3000(Lcom/android/settings/motion2014/SMotionGuideHub2014;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_application_access"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    :goto_0
    const-string v1, "SMotionGuideHub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KKK mQuickApplicationObserver onChange enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/android/settings/Utils;->enableQuickApplicationAccess(Z)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
