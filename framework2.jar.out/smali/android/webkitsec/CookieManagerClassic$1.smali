.class Landroid/webkitsec/CookieManagerClassic$1;
.super Landroid/os/AsyncTask;
.source "CookieManagerClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/CookieManagerClassic;->removeSessionCookie()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/CookieManagerClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/CookieManagerClassic;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/CookieManagerClassic$1;->this$0:Landroid/webkitsec/CookieManagerClassic;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/webkitsec/CookieManagerClassic$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    # invokes: Landroid/webkitsec/CookieManagerClassic;->nativeRemoveSessionCookie()V
    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->access$000()V

    iget-object v0, p0, Landroid/webkitsec/CookieManagerClassic$1;->this$0:Landroid/webkitsec/CookieManagerClassic;

    # invokes: Landroid/webkitsec/CookieManagerClassic;->signalCookieOperationsComplete()V
    invoke-static {v0}, Landroid/webkitsec/CookieManagerClassic;->access$100(Landroid/webkitsec/CookieManagerClassic;)V

    const/4 v0, 0x0

    return-object v0
.end method
