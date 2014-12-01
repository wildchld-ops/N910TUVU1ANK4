.class Lcom/android/mms/util/HandleComposerAttachment$53;
.super Ljava/lang/Object;
.source "HandleComposerAttachment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/HandleComposerAttachment;->createPermissionPopup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/util/HandleComposerAttachment;


# direct methods
.method constructor <init>(Lcom/android/mms/util/HandleComposerAttachment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/util/HandleComposerAttachment$53;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/util/HandleComposerAttachment$53;->this$0:Lcom/android/mms/util/HandleComposerAttachment;

    # getter for: Lcom/android/mms/util/HandleComposerAttachment;->mDoNotShowAgain2:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/mms/util/HandleComposerAttachment;->access$2300(Lcom/android/mms/util/HandleComposerAttachment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    return v1
.end method
