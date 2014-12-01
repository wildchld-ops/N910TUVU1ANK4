.class Lcom/android/mms/ui/ClassZeroActivity$2;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # invokes: Lcom/android/mms/ui/ClassZeroActivity;->cancelNotification()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$200(Lcom/android/mms/ui/ClassZeroActivity;)V

    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$2;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    # invokes: Lcom/android/mms/ui/ClassZeroActivity;->processNextMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$400(Lcom/android/mms/ui/ClassZeroActivity;)V

    return-void
.end method
