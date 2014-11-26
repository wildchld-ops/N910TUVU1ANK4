.class Lcom/android/mms/rcs/RcsBubbleView$2;
.super Ljava/lang/Object;
.source "RcsBubbleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/rcs/RcsBubbleView;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/rcs/RcsBubbleView;


# direct methods
.method constructor <init>(Lcom/android/mms/rcs/RcsBubbleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/rcs/RcsBubbleView$2;->this$0:Lcom/android/mms/rcs/RcsBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/rcs/RcsBubbleView$2;->this$0:Lcom/android/mms/rcs/RcsBubbleView;

    invoke-virtual {v0}, Lcom/android/mms/rcs/RcsBubbleView;->onImageLoaded()V

    return-void
.end method
