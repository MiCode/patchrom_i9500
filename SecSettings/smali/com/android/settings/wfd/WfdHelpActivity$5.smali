.class final Lcom/android/settings_ex/wfd/WfdHelpActivity$5;
.super Ljava/lang/Thread;
.source "WfdHelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wfd/WfdHelpActivity;->changeNfcEnabled(Landroid/content/Context;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$desiredState:Z

.field final synthetic val$nfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/nfc/NfcAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 244
    iput-boolean p2, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$desiredState:Z

    iput-object p3, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 246
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting NFC enabled state to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$desiredState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v4, 0x0

    .line 251
    .local v4, success:Z
    iget-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$desiredState:Z

    if-eqz v5, :cond_0

    .line 253
    :try_start_0
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 254
    .local v1, NfcManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "enable"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 255
    .local v3, setNfcEnabled:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 256
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    move-result v0

    .line 257
    .local v0, Nfc:Z
    move v4, v0

    .line 278
    .end local v0           #Nfc:Z
    .end local v1           #NfcManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v3           #setNfcEnabled:Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v4, :cond_1

    .line 279
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully changed NFC enabled state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$desiredState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :goto_1
    return-void

    .line 266
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 267
    .restart local v1       #NfcManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v5, "disable"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 268
    .local v2, setNfcDisabled:Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 269
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$nfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 270
    .restart local v0       #Nfc:Z
    move v4, v0

    goto :goto_0

    .line 281
    .end local v0           #Nfc:Z
    .end local v1           #NfcManagerClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #setNfcDisabled:Ljava/lang/reflect/Method;
    :cond_1
    const-string v5, "WfdHelpActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error setting NFC enabled state to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings_ex/wfd/WfdHelpActivity$5;->val$desiredState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 275
    :catch_0
    move-exception v5

    goto :goto_0

    .line 274
    :catch_1
    move-exception v5

    goto :goto_0

    .line 273
    :catch_2
    move-exception v5

    goto :goto_0

    .line 272
    :catch_3
    move-exception v5

    goto :goto_0

    .line 271
    :catch_4
    move-exception v5

    goto :goto_0

    .line 262
    :catch_5
    move-exception v5

    goto :goto_0

    .line 261
    :catch_6
    move-exception v5

    goto :goto_0

    .line 260
    :catch_7
    move-exception v5

    goto :goto_0

    .line 259
    :catch_8
    move-exception v5

    goto :goto_0

    .line 258
    :catch_9
    move-exception v5

    goto :goto_0
.end method
