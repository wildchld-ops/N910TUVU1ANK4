.class Lcom/android/mms/ui/EmoticonContainer$PagersAdapter$1;
.super Ljava/lang/Object;
.source "EmoticonContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;->getPage(I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$PagersAdapter$1;->this$1:Lcom/android/mms/ui/EmoticonContainer$PagersAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/View;
    .param p2    # Landroid/view/MotionEvent;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/mms/ui/CustomScrollView;->setIntercept(Z)V

    const/4 v0, 0x0

    return v0
.end method
