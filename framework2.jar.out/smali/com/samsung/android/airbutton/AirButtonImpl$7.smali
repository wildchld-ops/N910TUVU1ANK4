.class Lcom/samsung/android/airbutton/AirButtonImpl$7;
.super Landroid/telephony/PhoneStateListener;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/AirButtonImpl;
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

    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl$7;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl$7;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    # getter for: Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I
    invoke-static {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl$7;->this$0:Lcom/samsung/android/airbutton/AirButtonImpl;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    :cond_0
    return-void
.end method
