.class Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;
.super Ljava/lang/Object;
.source "SimeDbAutoUpdateService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x6

    .line 170
    const-wide/32 v1, 0xdbba00

    .line 172
    .local v1, delayTime:J
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mDbSettings:Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;
    invoke-static {v9}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$100(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/dbmanager/SimeDbSettings;->getAutoUpdateWlanOnly()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 174
    new-array v5, v12, [I

    fill-array-data v5, :array_0

    .line 176
    .local v5, sogouDbUpdateId:[I
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #calls: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->getSogouHotwordDbs([I)I
    invoke-static {v9, v5}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$200(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;[I)I

    move-result v4

    .line 178
    .local v4, sogouDbCnt:I
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v9}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "SimeDbAutoUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autoUpdate sogouDBCtn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 182
    aget v0, v5, v3

    .line 183
    .local v0, dbId:I
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateFactory;->createUpdateInterface(Landroid/content/Context;I)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    move-result-object v6

    .line 184
    .local v6, updateObj:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;
    invoke-interface {v6, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;->isUpdating(I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 185
    invoke-interface {v6, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;->update(I)V

    .line 186
    :cond_1
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v9}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "SimeDbAutoUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autoUpdate update sogou db = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 189
    .end local v0           #dbId:I
    .end local v6           #updateObj:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;
    :cond_3
    new-array v8, v12, [I

    fill-array-data v8, :array_1

    .line 190
    .local v8, xt9DbUpdateId:[I
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #calls: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->getXT9Dbs([I)I
    invoke-static {v9, v8}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$300(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;[I)I

    move-result v7

    .line 191
    .local v7, xt9DbCnt:I
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v9}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "SimeDbAutoUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autoUpdate xt9db cnt = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_7

    .line 194
    aget v0, v8, v3

    .line 195
    .restart local v0       #dbId:I
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateFactory;->createUpdateInterface(Landroid/content/Context;I)Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;

    move-result-object v6

    .line 196
    .restart local v6       #updateObj:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;
    invoke-interface {v6, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;->isUpdating(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 197
    invoke-interface {v6, v0}, Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;->update(I)V

    .line 198
    :cond_5
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v9}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "SimeDbAutoUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autoUpdate update xt9 db = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 201
    .end local v0           #dbId:I
    .end local v3           #i:I
    .end local v4           #sogouDbCnt:I
    .end local v5           #sogouDbUpdateId:[I
    .end local v6           #updateObj:Lcom/samsung/inputmethod/dbmanager/SimeDbUpdateInterface;
    .end local v7           #xt9DbCnt:I
    .end local v8           #xt9DbUpdateId:[I
    :cond_7
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->DEBUG:Z
    invoke-static {v9}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$000(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 202
    const-string v9, "SimeDbAutoUpdateService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "autoUpdate delayTime = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_8
    iget-object v9, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mHandler:Landroid/os/Handler;
    invoke-static {v9}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$500(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService$1;->this$0:Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;

    #getter for: Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->mUpdateTimeTask:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;->access$400(Lcom/samsung/inputmethod/dbmanager/autoupdate/SimeDbAutoUpdateService;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    return-void

    .line 174
    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 189
    :array_1
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method
