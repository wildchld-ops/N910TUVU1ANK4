.class final Lcom/touchtype/samsung/supportlibrary/mywordlist/a;
.super Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;,
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;,
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;,
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;,
        Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordList;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final addUserTerm(Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Term;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;",
            "Lcom/touchtype_fluency/Session;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lcom/touchtype/samsung/supportlibrary/mywordlist/TermAlreadyExistsException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "term should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "term should not be empty"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    move v0, v1

    :goto_2
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "listener should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    move v0, v1

    :goto_3
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userTermList should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_5

    move v0, v1

    :goto_4
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "session should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-virtual {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->getTerm()Lcom/touchtype_fluency/Term;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_5
    if-eqz v1, :cond_6

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "term already exists"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/TermAlreadyExistsException;

    invoke-direct {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/TermAlreadyExistsException;-><init>()V

    throw v0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    move v0, v6

    goto :goto_3

    :cond_5
    move v0, v6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting addUserTerm call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_7
    iget-object v7, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$a;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;B)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_8
    move v1, v6

    goto :goto_5
.end method

.method public final editUserTerm(Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Term;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;",
            "Lcom/touchtype_fluency/Session;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "term should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "term should not be empty"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "oldUserTerm should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    move v0, v1

    :goto_3
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "listener should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_4

    move v0, v1

    :goto_4
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userTermList should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_5

    :goto_5
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v2, "session should not be null"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting editUserTerm call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    move v0, v7

    goto :goto_1

    :cond_2
    move v0, v7

    goto :goto_2

    :cond_3
    move v0, v7

    goto :goto_3

    :cond_4
    move v0, v7

    goto :goto_4

    :cond_5
    move v1, v7

    goto :goto_5

    :cond_6
    iget-object v8, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$b;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype_fluency/Term;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;B)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public final listUserTerms(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Lcom/touchtype_fluency/Session;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "ordering should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move v0, v1

    :goto_1
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "listener should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    :goto_2
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v2, "session should not be null"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting listUserTerms call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Lcom/touchtype_fluency/Session;B)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public final removeUserTerms(Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;",
            "Lcom/touchtype_fluency/Session;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userTermsToRemoveList should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userTermsToRemoveList should not be empty"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    move v0, v1

    :goto_2
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "listener should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    move v0, v1

    :goto_3
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userTermList should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    move v0, v1

    :goto_4
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userTermList should not be smaller than userTermsToRemoveList"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_5

    :goto_5
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v2, "session should not be null"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting removeUserTerms call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    move v0, v6

    goto :goto_2

    :cond_3
    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_4

    :cond_5
    move v1, v6

    goto :goto_5

    :cond_6
    iget-object v7, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$d;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Ljava/util/List;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;B)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method public final resortUserTerms(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;Lcom/touchtype_fluency/Session;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;",
            ">;",
            "Lcom/touchtype_fluency/Session;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "listener should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    move v0, v1

    :goto_1
    sget-object v2, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v3, "userTermList should not be null"

    invoke-static {v0, v2, v3}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    :goto_2
    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v2, "session should not be null"

    invoke-static {v1, v0, v2}, Lcom/touchtype/samsung/supportlibrary/utils/ParameterChecking;->checkParam(ZLjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a:Ljava/lang/String;

    const-string v1, "Not starting resortUserTerms call since executor is shut down"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$e;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Ljava/util/List;B)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method public final shutDown()V
    .locals 1

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    return-void
.end method

.method public final startUp()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
