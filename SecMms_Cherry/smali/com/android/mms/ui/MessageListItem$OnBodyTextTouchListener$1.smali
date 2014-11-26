.class Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener$1;
.super Ljava/lang/Object;
.source "MessageListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;

.field final synthetic val$displayingText:Landroid/text/Spannable;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;Landroid/text/Spannable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener$1;->this$1:Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener;

    iput-object p2, p0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener$1;->val$displayingText:Landroid/text/Spannable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener$1;->val$displayingText:Landroid/text/Spannable;

    sget-object v1, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_COLOR:Landroid/text/style/ForegroundColorSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/mms/ui/MessageListItem$OnBodyTextTouchListener$1;->val$displayingText:Landroid/text/Spannable;

    sget-object v1, Lcom/android/mms/util/UIUtils$OnLinkTouchListener;->SELECTED_URL_SPAN_UNDERLINE:Landroid/text/style/UnderlineSpan;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method
