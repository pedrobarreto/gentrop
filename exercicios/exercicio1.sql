SELECT * FROM gentrop.clientes
WHERE status = 'A' AND (email_address || subscriber_key  LIKE '%gentrop%');