<div class="ui modal modifyEvent">
            <i class="close icon"></i>
            <div class="header">
                 Modify Event
            </div>
            <div class="content">
                <div>
                    <form>
                        <center>
                            <select name="modifyEventId">
                                <%
                                    SQL = "SELECT `event_id`, `event_name` FROM `event`";
                                    try
                                    {
                                        db.pstmt = db.conn.prepareStatement(SQL);
                                        try
                                        {
                                            db.rs = db.pstmt.executeQuery();
                                            while (db.rs.next())
                                                out.print ("<option value=" + db.rs.getInt("event_id") + ">" + db.rs.getString("event_name") + "</option>");
                                        }
                                        catch (SQLException e){}
                                    }
                                    catch (SQLException e){}
                                    finally
                                    {
                                        //db.conn.close();
                                    }
                                %>
                            </select>
                            <div style="width:310px; height:40px; "><input type="submit" value="Modify Event"></div>
                        </center>
                    </form>
                </div>
            </div>
        </div>