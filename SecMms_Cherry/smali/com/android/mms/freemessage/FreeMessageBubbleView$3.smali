.class Lcom/android/mms/freemessage/FreeMessageBubbleView$3;
.super Ljava/lang/Object;
.source "FreeMessageBubbleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/freemessage/FreeMessageBubbleView;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;


# direct methods
.method constructor <init>(Lcom/android/mms/freemessage/FreeMessageBubbleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$3;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/freemessage/FreeMessageBubbleView$3;->this$0:Lcom/android/mms/freemessage/FreeMessageBubbleView;

    invoke-virtual {v0}, Lcom/android/mms/freemessage/FreeMessageBubbleView;->onImageLoaded()V

    return-void
.end method
