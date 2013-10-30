.class public Lcom/nuance/swype/connect/api/ConnectAccount;
.super Ljava/lang/Object;
.source "ConnectAccount.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;,
        Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;,
        Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;
    }
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_EMAIL:I = 0x1

.field private static final serialVersionUID:J = 0x21410eb073857bcL


# instance fields
.field private accountId:Ljava/lang/String;

.field private accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

.field private creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

.field private deviceCount:I

.field private final devices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;",
            ">;"
        }
    .end annotation
.end field

.field private existsOnServer:Z

.field private identifier:Ljava/lang/String;

.field private identifierForDisplay:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;)V
    .locals 2
    .parameter "accountId"
    .parameter "identifier"
    .parameter "type"
    .parameter "creationMethod"

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    .line 92
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    .line 114
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    .line 115
    invoke-direct {p0, p2}, Lcom/nuance/swype/connect/api/ConnectAccount;->setIdentifier(Ljava/lang/String;)V

    .line 116
    iput-object p2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    .line 117
    iput p3, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->type:I

    .line 118
    iput v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    .line 119
    iput-object p4, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    .line 120
    return-void
.end method

.method private setIdentifier(Ljava/lang/String;)V
    .locals 4
    .parameter "identifier"

    .prologue
    .line 294
    if-eqz p1, :cond_0

    .line 295
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, parts:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v2, v0, v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifier:Ljava/lang/String;

    .line 300
    .end local v0           #parts:[Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addDevice(Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;)V
    .locals 3
    .parameter "device"

    .prologue
    .line 310
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    .line 312
    .local v0, updateDevice:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->setName(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getLastCheckin()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->setLastCheckin(J)V

    .line 317
    .end local v0           #updateDevice:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addDevices(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, devices:Ljava/util/List;,"Ljava/util/List<Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 328
    .local v2, s:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;

    .line 329
    .local v0, device:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    invoke-virtual {p0, v0}, Lcom/nuance/swype/connect/api/ConnectAccount;->addDevice(Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;)V

    .line 330
    invoke-virtual {v0}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 333
    .end local v0           #device:Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;
    :cond_0
    iget-object v3, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 334
    return-void
.end method

.method public getAccountId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountState()Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    return-object v0
.end method

.method public getCreationMethod()Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    return-object v0
.end method

.method public getDeviceCount()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    return v0
.end method

.method public getDevices()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/swype/connect/api/ConnectAccount$AccountDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    return-object v0
.end method

.method public getExistsOnServer()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifier:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifierForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifierForDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->type:I

    return v0
.end method

.method public isDeleted()Z
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->devices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    .line 229
    iget-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    sget-object v1, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->PENDING_DELETE:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    if-eq v0, v1, :cond_0

    .line 230
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->UNREGISTERED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 232
    :cond_0
    iput-boolean v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    .line 233
    iput v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    .line 234
    return-void
.end method

.method public setAccountId(Ljava/lang/String;)V
    .locals 0
    .parameter "accountId"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setAccountState(Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 263
    iput-object p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 264
    return-void
.end method

.method public setDeviceCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 283
    iput p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    .line 284
    return-void
.end method

.method public setExistsOnServer(Z)V
    .locals 0
    .parameter "exists"

    .prologue
    .line 252
    iput-boolean p1, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    .line 253
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Account [ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->identifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "existsOnServer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->existsOnServer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "creationMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->creationMethod:Lcom/nuance/swype/connect/api/ConnectAccount$CreationMethod;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "accountState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deviceCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->deviceCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 360
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public verify()V
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;->VERIFIED:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    iput-object v0, p0, Lcom/nuance/swype/connect/api/ConnectAccount;->accountState:Lcom/nuance/swype/connect/api/ConnectAccount$AccountState;

    .line 242
    return-void
.end method
