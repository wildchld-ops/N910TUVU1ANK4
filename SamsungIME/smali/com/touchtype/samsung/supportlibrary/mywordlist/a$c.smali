.class final Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype/samsung/supportlibrary/mywordlist/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

.field private b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

.field private c:Lcom/touchtype_fluency/Session;


# direct methods
.method private constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Lcom/touchtype_fluency/Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    iput-object p3, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    iput-object p4, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->c:Lcom/touchtype_fluency/Session;

    return-void
.end method

.method synthetic constructor <init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Lcom/touchtype_fluency/Session;B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;-><init>(Lcom/touchtype/samsung/supportlibrary/mywordlist/a;Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;Lcom/touchtype_fluency/Session;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->c:Lcom/touchtype_fluency/Session;

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->persistentDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Trainer;->getNovelTerms(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted ListUserTermsThread.run after running getNovelTerms"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v4, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/Term;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-direct {v4, v1, v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;-><init>(Lcom/touchtype_fluency/Term;Ljava/lang/Long;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted ListUserTermsThread.run after constructing UserTerms"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->a:Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;

    invoke-static {v0}, Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm;->a(Lcom/touchtype/samsung/supportlibrary/mywordlist/UserTerm$Ordering;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/touchtype/samsung/supportlibrary/mywordlist/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Interrupted ListUserTermsThread.run after sorting UserTerms"

    invoke-static {v0, v1}, Lcom/touchtype/samsung/supportlibrary/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/touchtype/samsung/supportlibrary/mywordlist/a$c;->b:Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;

    invoke-interface {v0, v2}, Lcom/touchtype/samsung/supportlibrary/mywordlist/MyWordListListener;->onListingComplete(Ljava/util/List;)V

    goto :goto_0
.end method
