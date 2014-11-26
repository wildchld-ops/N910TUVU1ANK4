.class Lcom/android/mms/ui/SlideView$7;
.super Ljava/lang/Object;
.source "SlideView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SlideView;->addAttachmentTitleView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SlideView;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SlideView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideView$7;->this$0:Lcom/android/mms/ui/SlideView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/mms/ui/SlideView$7;->this$0:Lcom/android/mms/ui/SlideView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView$7;->this$0:Lcom/android/mms/ui/SlideView;

    # getter for: Lcom/android/mms/ui/SlideView;->mAttachmentList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/mms/ui/SlideView;->access$3000(Lcom/android/mms/ui/SlideView;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/android/mms/ui/SlideView;->saveAttachFiles(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/SlideView;->access$3100(Lcom/android/mms/ui/SlideView;Ljava/util/ArrayList;)V

    return-void
.end method
