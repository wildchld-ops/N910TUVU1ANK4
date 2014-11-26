.class Lcom/android/mms/help/AirButtonMainActivity$1;
.super Ljava/lang/Object;
.source "AirButtonMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirButtonMainActivity;->showDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AirButtonMainActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirButtonMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/AirButtonMainActivity$1;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpAttachIntent:Z

    sput-boolean v0, Lcom/android/mms/help/AirButtonMainActivity;->helpContactIntent:Z

    iget-object v0, p0, Lcom/android/mms/help/AirButtonMainActivity$1;->this$0:Lcom/android/mms/help/AirButtonMainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
