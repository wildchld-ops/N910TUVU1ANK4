.class Lcom/android/mms/ui/EmoticonContainer$6$1;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonContainer$6;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/EmoticonContainer$6;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer$6;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$6$1;->this$1:Lcom/android/mms/ui/EmoticonContainer$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$6$1;->this$1:Lcom/android/mms/ui/EmoticonContainer$6;

    iget-object v0, v0, Lcom/android/mms/ui/EmoticonContainer$6;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-virtual {v0}, Lcom/android/mms/ui/EmoticonContainer;->continousDelete()V

    return-void
.end method
