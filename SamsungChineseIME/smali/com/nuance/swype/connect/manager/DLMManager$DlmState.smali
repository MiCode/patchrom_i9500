.class Lcom/nuance/swype/connect/manager/DLMManager$DlmState;
.super Ljava/lang/Object;
.source "DLMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/connect/manager/DLMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DlmState"
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = ","


# instance fields
.field private backupInProgress:Z

.field private backupRequired:Z

.field private pullInProgress:Z

.field private pullRequested:Z

.field private pullTransID:Ljava/lang/String;

.field private restoreInProgress:Z

.field private restoreRequested:Z

.field private restoreTransID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .parameter "from"

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    if-nez p1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 242
    :cond_0
    :try_start_0
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 243
    .local v3, items:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 244
    .local v0, current:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #current:I
    .local v1, current:I
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    .line 245
    add-int/lit8 v0, v1, 0x1

    .end local v1           #current:I
    .restart local v0       #current:I
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested:Z

    .line 246
    add-int/lit8 v1, v0, 0x1

    .end local v0           #current:I
    .restart local v1       #current:I
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired:Z

    .line 247
    add-int/lit8 v0, v1, 0x1

    .end local v1           #current:I
    .restart local v0       #current:I
    aget-object v4, v3, v1

    iput-object v4, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 248
    .end local v0           #current:I
    .end local v3           #items:[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 249
    .local v2, ex:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error loading DlmState from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nuance/swype/connect/util/Logger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public backupComplete()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired:Z

    .line 233
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupInProgress:Z

    .line 234
    return-void
.end method

.method public backupRequired()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired:Z

    .line 229
    return-void
.end method

.method public getPullTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;

    return-object v0
.end method

.method public getRestoreTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreTransID:Ljava/lang/String;

    return-object v0
.end method

.method public isBackupHappening()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupInProgress:Z

    return v0
.end method

.method public isBackupRequired()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired:Z

    return v0
.end method

.method public isPullHappening()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullInProgress:Z

    return v0
.end method

.method public isPullRequested()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    return v0
.end method

.method public isRestoreHappening()Z
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreInProgress:Z

    return v0
.end method

.method public isRestoreRequested()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested:Z

    return v0
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 129
    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreTransID:Ljava/lang/String;

    .line 130
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupInProgress:Z

    .line 131
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullInProgress:Z

    .line 132
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreInProgress:Z

    .line 133
    return-void
.end method

.method public pullComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 167
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 169
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullInProgress:Z

    .line 170
    return-void
.end method

.method public pullRequested()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested:Z

    if-nez v0, :cond_0

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    .line 162
    :goto_0
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullInProgress:Z

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 164
    return-void

    .line 160
    :cond_0
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    goto :goto_0
.end method

.method public restoreComplete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 183
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested:Z

    .line 184
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    .line 185
    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreTransID:Ljava/lang/String;

    .line 187
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreInProgress:Z

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullInProgress:Z

    .line 189
    return-void
.end method

.method public restoreRequested()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested:Z

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setPullTransactionId(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    .line 142
    return-void
.end method

.method public setRestoreTransactionId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreTransID:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public startBackup()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 207
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired:Z

    .line 208
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupInProgress:Z

    .line 209
    return-void
.end method

.method public startPull()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    .line 193
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullInProgress:Z

    .line 194
    return-void
.end method

.method public startRestore()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 197
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested:Z

    .line 198
    iput-boolean v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreInProgress:Z

    .line 201
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;

    .line 203
    iput-boolean v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullInProgress:Z

    .line 204
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->restoreRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->backupRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/connect/manager/DLMManager$DlmState;->pullTransID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
