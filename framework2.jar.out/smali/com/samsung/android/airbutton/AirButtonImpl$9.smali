.class Lcom/samsung/android/airbutton/AirButtonImpl$9;
.super Landroid/content/BroadcastReceiver;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;->createMultiWindowReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/AirButtonImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$9;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Context;
    .param p2    # Landroid/content/Intent;

    const-string v0, "AirButtonImpl"

    const-string v1, "Multi window state changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl$9;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I
    invoke-static {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl$9;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    :cond_0
    return-void
.end method
