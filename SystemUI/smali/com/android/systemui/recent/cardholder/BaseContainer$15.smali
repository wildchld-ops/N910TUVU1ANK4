.class Lcom/android/systemui/recent/cardholder/BaseContainer$15;
.super Ljava/lang/Object;
.source "BaseContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recent/cardholder/BaseContainer;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/recent/cardholder/BaseContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$15;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recent/cardholder/BaseContainer$15;->this$0:Lcom/android/systemui/recent/cardholder/BaseContainer;

    # invokes: Lcom/android/systemui/recent/cardholder/BaseContainer;->update()V
    invoke-static {v0}, Lcom/android/systemui/recent/cardholder/BaseContainer;->access$500(Lcom/android/systemui/recent/cardholder/BaseContainer;)V

    return-void
.end method
