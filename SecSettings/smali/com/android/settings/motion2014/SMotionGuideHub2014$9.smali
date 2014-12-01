.class Lcom/android/settings/motion2014/SMotionGuideHub2014$9;
.super Ljava/lang/Object;
.source "SMotionGuideHub2014.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion2014/SMotionGuideHub2014;->showAirbrowseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;


# direct methods
.method constructor <init>(Lcom/android/settings/motion2014/SMotionGuideHub2014;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/motion2014/SMotionGuideHub2014$9;->this$0:Lcom/android/settings/motion2014/SMotionGuideHub2014;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/motion2014/SMotionGuideHub2014;->mAirBrowseDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/motion2014/SMotionGuideHub2014;->access$2602(Lcom/android/settings/motion2014/SMotionGuideHub2014;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
