.class Lcom/android/mms/ui/SelectMapActivity$2;
.super Landroid/os/Handler;
.source "SelectMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/SelectMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/SelectMapActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SelectMapActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map hanlder, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->getMyLocation()Lcom/google/android/maps/GeoPoint;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$400(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v2

    # setter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v1, v2}, Lcom/android/mms/ui/SelectMapActivity;->access$302(Lcom/android/mms/ui/SelectMapActivity;Lcom/google/android/maps/GeoPoint;)Lcom/google/android/maps/GeoPoint;

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchPoint:Lcom/google/android/maps/GeoPoint;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$300(Lcom/android/mms/ui/SelectMapActivity;)Lcom/google/android/maps/GeoPoint;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/SelectMapActivity$2$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SelectMapActivity$2$1;-><init>(Lcom/android/mms/ui/SelectMapActivity$2;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "search point is null"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->getLocationServiceAvailable()Z
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$700(Lcom/android/mms/ui/SelectMapActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    invoke-virtual {v1}, Lcom/android/mms/ui/SelectMapActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0177

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSelectMapHandler GET_MYLOCATION, Toast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # invokes: Lcom/android/mms/ui/SelectMapActivity;->searchLocation()V
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$800(Lcom/android/mms/ui/SelectMapActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$900(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mLocation:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$500(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$900(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/mms/ui/SelectMapActivity;->access$900(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->mSearchView:Landroid/widget/SearchView;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$1000(Lcom/android/mms/ui/SelectMapActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->requestFocus()Z

    iget-object v1, p0, Lcom/android/mms/ui/SelectMapActivity$2;->this$0:Lcom/android/mms/ui/SelectMapActivity;

    # getter for: Lcom/android/mms/ui/SelectMapActivity;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/mms/ui/SelectMapActivity;->access$200(Lcom/android/mms/ui/SelectMapActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UPDATE_LOCATION_FROM_GET_MYLOCATION"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/SelectMapActivity$2$2;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SelectMapActivity$2$2;-><init>(Lcom/android/mms/ui/SelectMapActivity$2;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
