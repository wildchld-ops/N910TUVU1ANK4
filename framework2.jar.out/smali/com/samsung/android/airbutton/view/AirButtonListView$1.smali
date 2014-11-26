.class Lcom/samsung/android/airbutton/view/AirButtonListView$1;
.super Ljava/lang/Object;
.source "AirButtonListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/airbutton/view/AirButtonListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/airbutton/view/AirButtonListView;


# direct methods
.method constructor <init>(Lcom/samsung/android/airbutton/view/AirButtonListView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView$1;->this$0:Lcom/samsung/android/airbutton/view/AirButtonListView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    return-void
.end method
