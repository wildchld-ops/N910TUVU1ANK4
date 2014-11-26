.class public Lcom/samsung/javaomp/compiler/Variable;
.super Ljava/lang/Object;


# static fields
.field static final immutableBuiltins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final primitiveTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final wraperToPrimitive:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field arrayType:Ljava/lang/String;

.field id:Ljava/lang/String;

.field isFinal:Z

.field isLoopVariable:Z

.field isVolatile:Z

.field type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/compiler/Variable;->wraperToPrimitive:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    const-string v1, "int"

    const-string v2, "Integer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    const-string v1, "byte"

    const-string v2, "Byte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    const-string/jumbo v1, "short"

    const-string v2, "Short"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    const-string v1, "long"

    const-string v2, "Long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    const-string v1, "float"

    const-string v2, "Float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    const-string v1, "double"

    const-string v2, "Double"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    const-string v1, "boolean"

    const-string v2, "Boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    const-string v1, "char"

    const-string v2, "Char"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->wraperToPrimitive:Ljava/util/HashMap;

    const-string v1, "Integer"

    const-string v2, "int"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->wraperToPrimitive:Ljava/util/HashMap;

    const-string v1, "Byte"

    const-string v2, "byte"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->wraperToPrimitive:Ljava/util/HashMap;

    const-string v1, "Short"

    const-string/jumbo v2, "short"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->wraperToPrimitive:Ljava/util/HashMap;

    const-string v1, "Long"

    const-string v2, "long"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->wraperToPrimitive:Ljava/util/HashMap;

    const-string v1, "Float"

    const-string v2, "float"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->wraperToPrimitive:Ljava/util/HashMap;

    const-string v1, "Double"

    const-string v2, "double"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->wraperToPrimitive:Ljava/util/HashMap;

    const-string v1, "Boolean"

    const-string v2, "boolean"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->wraperToPrimitive:Ljava/util/HashMap;

    const-string v1, "Char"

    const-string v2, "char"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    const-string v1, "Integer"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    const-string v1, "Byte"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    const-string v1, "Short"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    const-string v1, "Long"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    const-string v1, "Float"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    const-string v1, "Double"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    const-string v1, "Boolean"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    const-string v1, "Char"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    const-string v1, "String"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/javaomp/compiler/Variable;->isLoopVariable:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/javaomp/compiler/Variable;->isLoopVariable:Z

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/javaomp/compiler/Variable;->arrayType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArrayType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/Variable;->arrayType:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    return-object v0
.end method

.method public isBoolean()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFinal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/Variable;->isFinal:Z

    return v0
.end method

.method public isImmutableBuiltin()Z
    .locals 2

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->immutableBuiltins:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLoopVariable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/Variable;->isLoopVariable:Z

    return v0
.end method

.method public isPrimitive()Z
    .locals 2

    sget-object v0, Lcom/samsung/javaomp/compiler/Variable;->primitiveTypes:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/javaomp/compiler/Variable;->arrayType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVolatile()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/javaomp/compiler/Variable;->isVolatile:Z

    return v0
.end method

.method public setArrayType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/Variable;->arrayType:Ljava/lang/String;

    return-void
.end method

.method public setFinal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/Variable;->isFinal:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    return-void
.end method

.method public setLoopVariable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/Variable;->isLoopVariable:Z

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    return-void
.end method

.method public setVolatile(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/javaomp/compiler/Variable;->isVolatile:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/Variable;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/Variable;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", arrayType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/javaomp/compiler/Variable;->arrayType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFinal: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/javaomp/compiler/Variable;->isFinal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVolatile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/javaomp/compiler/Variable;->isVolatile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
