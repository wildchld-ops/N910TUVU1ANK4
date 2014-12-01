.class Lcom/android/mms/help/AirViewMainActivity$3;
.super Ljava/lang/Object;
.source "AirViewMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/help/AirViewMainActivity;->showDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/help/AirViewMainActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/help/AirViewMainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/help/AirViewMainActivity$3;->this$0:Lcom/android/mms/help/AirViewMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/help/AirViewMainActivity$3;->this$0:Lcom/android/mms/help/AirViewMainActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
