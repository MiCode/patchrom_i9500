.class public Lcom/android/settings_ex/samba/SambaLogs;
.super Landroid/app/Activity;
.source "SambaLogs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/samba/SambaLogs$LogItem;
    }
.end annotation


# static fields
.field static ListItem:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/samba/SambaLogs$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field static ListItemCurrent:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/samba/SambaLogs$LogItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final MENU_ID_DELETE_LOG:I = 0x2

.field private static final MENU_ID_DONE_LOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SambaLogs"

.field private static adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static arrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static client_listview:Landroid/widget/ListView;

.field private static clientcnt:I

.field private static log_listview:Landroid/widget/ListView;

.field private static mClientCnt:Ljava/lang/String;

.field private static mClientCnt_View:Landroid/widget/TextView;

.field private static mMaxLogoutClient:I

.field static mcontext:Landroid/content/Context;

.field private static util:Lcom/android/settings_ex/samba/SambaConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/android/settings_ex/samba/SambaLogs;->clientcnt:I

    .line 45
    const/16 v0, 0x64

    sput v0, Lcom/android/settings_ex/samba/SambaLogs;->mMaxLogoutClient:I

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/samba/SambaLogs;->ListItemCurrent:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    return-void
.end method

.method public static update_client_list()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 103
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    .line 104
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v3, v6}, Lcom/android/settings_ex/samba/SambaConfig;->getclientLog(I)Ljava/util/ArrayList;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 107
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    iget-object v3, v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->STATE:Ljava/lang/String;

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    iget-object v3, v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->ITEMNAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 112
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    const v4, 0x7f09121c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    .local v2, samba_no_access_client:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->util:Lcom/android/settings_ex/samba/SambaConfig;

    iput v6, v3, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    .line 117
    .end local v2           #samba_no_access_client:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->util:Lcom/android/settings_ex/samba/SambaConfig;

    iget v3, v3, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    sput v3, Lcom/android/settings_ex/samba/SambaLogs;->clientcnt:I

    .line 118
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    const v4, 0x7f091212

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/android/settings_ex/samba/SambaLogs;->clientcnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings_ex/samba/SambaLogs;->mClientCnt:Ljava/lang/String;

    .line 120
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->mClientCnt_View:Landroid/widget/TextView;

    sget-object v4, Lcom/android/settings_ex/samba/SambaLogs;->mClientCnt:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    sput-object v3, Lcom/android/settings_ex/samba/SambaLogs;->adapter:Landroid/widget/ArrayAdapter;

    .line 122
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->client_listview:Landroid/widget/ListView;

    sget-object v4, Lcom/android/settings_ex/samba/SambaLogs;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    return-void
.end method

.method public static update_log_list()V
    .locals 6

    .prologue
    .line 126
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    .line 127
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->util:Lcom/android/settings_ex/samba/SambaConfig;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/samba/SambaConfig;->getaccessLog(I)Ljava/util/ArrayList;

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v4, Lcom/android/settings_ex/samba/SambaLogs;->mMaxLogoutClient:I

    if-ge v3, v4, :cond_1

    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_1
    if-ge v0, v3, :cond_2

    .line 130
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    iget-object v3, v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->STATE:Ljava/lang/String;

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->ListItem:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;

    iget-object v3, v3, Lcom/android/settings_ex/samba/SambaLogs$LogItem;->ITEMNAME:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v3, Lcom/android/settings_ex/samba/SambaLogs;->mMaxLogoutClient:I

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .restart local v1       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    const v4, 0x7f09121d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, samba_no_access_log:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v2           #samba_no_access_log:Ljava/lang/String;
    :cond_3
    new-instance v3, Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    const v5, 0x1090003

    invoke-direct {v3, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    sput-object v3, Lcom/android/settings_ex/samba/SambaLogs;->adapter:Landroid/widget/ArrayAdapter;

    .line 141
    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->log_listview:Landroid/widget/ListView;

    sget-object v4, Lcom/android/settings_ex/samba/SambaLogs;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 142
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v2, 0x7f070065

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 83
    sput-object p0, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    .line 84
    sget-object v2, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/samba/SambaConfig;->getInstance(Landroid/content/Context;)Lcom/android/settings_ex/samba/SambaConfig;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/samba/SambaLogs;->util:Lcom/android/settings_ex/samba/SambaConfig;

    .line 86
    sget-object v2, Lcom/android/settings_ex/samba/SambaLogs;->util:Lcom/android/settings_ex/samba/SambaConfig;

    iget v2, v2, Lcom/android/settings_ex/samba/SambaConfig;->checkCnt:I

    sput v2, Lcom/android/settings_ex/samba/SambaLogs;->clientcnt:I

    .line 87
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f091212

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget v5, Lcom/android/settings_ex/samba/SambaLogs;->clientcnt:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/settings_ex/samba/SambaLogs;->mClientCnt:Ljava/lang/String;

    .line 88
    const v2, 0x7f0b051d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sput-object v2, Lcom/android/settings_ex/samba/SambaLogs;->mClientCnt_View:Landroid/widget/TextView;

    .line 89
    sget-object v2, Lcom/android/settings_ex/samba/SambaLogs;->mClientCnt_View:Landroid/widget/TextView;

    sget-object v3, Lcom/android/settings_ex/samba/SambaLogs;->mClientCnt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f0b0520

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    .local v0, accesslogView:Landroid/widget/TextView;
    const v2, 0x7f0911fb

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, title:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v2, 0x7f0b051f

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    sput-object v2, Lcom/android/settings_ex/samba/SambaLogs;->client_listview:Landroid/widget/ListView;

    .line 96
    const v2, 0x7f0b0522

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    sput-object v2, Lcom/android/settings_ex/samba/SambaLogs;->log_listview:Landroid/widget/ListView;

    .line 98
    invoke-static {}, Lcom/android/settings_ex/samba/SambaLogs;->update_client_list()V

    .line 99
    invoke-static {}, Lcom/android/settings_ex/samba/SambaLogs;->update_log_list()V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 147
    const v0, 0x7f09120d

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 148
    const v0, 0x7f09120e

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 149
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 155
    new-instance v0, Lcom/android/settings_ex/samba/ServerDBHelper;

    sget-object v2, Lcom/android/settings_ex/samba/SambaLogs;->mcontext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v4, v4, v3}, Lcom/android/settings_ex/samba/ServerDBHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 157
    .local v0, DBHelper:Lcom/android/settings_ex/samba/ServerDBHelper;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 171
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 159
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 163
    :pswitch_1
    sget-object v2, Lcom/android/settings_ex/samba/SambaLogs;->util:Lcom/android/settings_ex/samba/SambaConfig;

    invoke-virtual {v2}, Lcom/android/settings_ex/samba/SambaConfig;->delLog()V

    .line 164
    invoke-static {}, Lcom/android/settings_ex/samba/SambaLogs;->update_log_list()V

    .line 165
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f091210

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 157
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
