.class Lcom/android/mms/ui/SlideshowActivity$6;
.super Ljava/lang/Object;
.source "SlideshowActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideshowActivity;->releaseMenuBlockDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideshowActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideshowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/SlideshowActivity$6;->this$0:Lcom/android/mms/ui/SlideshowActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/mms/ui/SlideshowActivity;->mIsBlockMenu:Z

    return-void
.end method
