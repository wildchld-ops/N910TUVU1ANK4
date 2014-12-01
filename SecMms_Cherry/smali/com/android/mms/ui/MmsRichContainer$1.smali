.class Lcom/android/mms/ui/MmsRichContainer$1;
.super Ljava/lang/Object;
.source "MmsRichContainer.java"

# interfaces
.implements Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MmsRichContainer;->setWritingBuddy(Landroid/widget/EditText;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MmsRichContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MmsRichContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MmsRichContainer$1;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageReceived(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MmsRichContainer$1;->this$0:Lcom/android/mms/ui/MmsRichContainer;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/MmsRichContainer;->setBitmapforWB(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
