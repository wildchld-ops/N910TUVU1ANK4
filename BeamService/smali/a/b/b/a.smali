.class public final La/b/b/a;
.super La/b/a/b;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, La/b/a/b;-><init>()V

    iput-object p1, p0, La/b/b/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12

    const/16 v11, 0x5c

    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, La/b/b/a;->b:Ljava/lang/String;

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p2, v7, v2

    aput-object v6, v7, v4

    array-length v0, v7

    if-eqz v0, :cond_0

    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v7, v0

    instance-of v1, v0, Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Throwable;

    move-object v5, v0

    :goto_0
    if-nez p1, :cond_1

    new-instance v0, La/b/a/a;

    invoke-direct {v0, v6, v7, v5}, La/b/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    invoke-virtual {v0}, La/b/a/a;->a()Ljava/lang/String;

    return-void

    :cond_0
    move-object v5, v6

    goto :goto_0

    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x32

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    move v0, v2

    move v1, v2

    :goto_2
    array-length v3, v7

    if-ge v0, v3, :cond_8

    const-string v3, "{}"

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v9

    const/4 v3, -0x1

    if-ne v9, v3, :cond_3

    if-nez v1, :cond_2

    new-instance v0, La/b/a/a;

    invoke-direct {v0, p1, v7, v5}, La/b/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, La/b/a/a;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v5}, La/b/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    if-eqz v9, :cond_4

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_4

    move v3, v4

    :goto_3
    if-eqz v3, :cond_7

    if-lt v9, v10, :cond_5

    add-int/lit8 v3, v9, -0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_5

    move v3, v4

    :goto_4
    if-nez v3, :cond_6

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v3, v9, -0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x7b

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v9, 0x1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    move v3, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v9, -0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, v7, v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8, v1, v3}, La/b/a/c;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    add-int/lit8 v1, v9, 0x2

    goto :goto_5

    :cond_7
    invoke-virtual {p1, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, v7, v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v8, v1, v3}, La/b/a/c;->a(Ljava/lang/StringBuffer;Ljava/lang/Object;Ljava/util/Map;)V

    add-int/lit8 v1, v9, 0x2

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    array-length v1, v7

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_9

    new-instance v0, La/b/a/a;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v5}, La/b/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_9
    new-instance v0, La/b/a/a;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v7, v6}, La/b/a/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method
